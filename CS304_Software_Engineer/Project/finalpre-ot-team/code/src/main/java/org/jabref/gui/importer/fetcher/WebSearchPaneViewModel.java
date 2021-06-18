package org.jabref.gui.importer.fetcher;

import java.util.SortedSet;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

import javafx.beans.property.ListProperty;
import javafx.beans.property.ObjectProperty;
import javafx.beans.property.SimpleListProperty;
import javafx.beans.property.SimpleObjectProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.css.PseudoClass;
import javafx.scene.control.TextField;
import javafx.scene.control.Tooltip;

import org.jabref.gui.DialogService;
import org.jabref.gui.StateManager;
import org.jabref.gui.importer.ImportEntriesDialog;
import org.jabref.gui.util.BackgroundTask;
import org.jabref.gui.util.TaskExecutor;
import org.jabref.logic.importer.ParserResult;
import org.jabref.logic.importer.SearchBasedFetcher;
import org.jabref.logic.importer.WebFetchers;
import org.jabref.logic.l10n.Localization;
import org.jabref.model.strings.StringUtil;
import org.jabref.preferences.PreferencesService;

import com.tobiasdiez.easybind.EasyBind;

public class WebSearchPaneViewModel {

    private final ObjectProperty<SearchBasedFetcher> selectedFetcher = new SimpleObjectProperty<>();
    private final ListProperty<SearchBasedFetcher> fetchers = new SimpleListProperty<>(FXCollections.observableArrayList());
    private final StringProperty query = new SimpleStringProperty();
    private final ExecutorService executor = Executors.newFixedThreadPool(1);
    private final DialogService dialogService;
    private final StateManager stateManager;
    private final Pattern queryPattern;
    private final Pattern laxQueryPattern;

    // CS304 Issue link: https://github.com/JabRef/jabref/issues/7411
    /**
     * constructs an object of web search pane view model
     *
     * @param preferencesService a service object contains preferences information
     * @param dialogService      a service object used to creates dialogs and show them
     * @param stateManager       a manager manages all application state
     */
    public WebSearchPaneViewModel(PreferencesService preferencesService, DialogService dialogService, StateManager stateManager) {
        this.dialogService = dialogService;
        this.stateManager = stateManager;

        SortedSet<SearchBasedFetcher> allFetchers = WebFetchers.getSearchBasedFetchers(preferencesService.getImportFormatPreferences());
        fetchers.setAll(allFetchers);

        // Choose last-selected fetcher as default
        int defaultFetcherIndex = preferencesService.getSidePanePreferences().getWebSearchFetcherSelected();
        if ((defaultFetcherIndex <= 0) || (defaultFetcherIndex >= fetchers.size())) {
            selectedFetcherProperty().setValue(fetchers.get(0));
        } else {
            selectedFetcherProperty().setValue(fetchers.get(defaultFetcherIndex));
        }
        EasyBind.subscribe(selectedFetcherProperty(), newFetcher -> {
            int newIndex = fetchers.indexOf(newFetcher);
            preferencesService.storeSidePanePreferences(preferencesService.getSidePanePreferences().withWebSearchFetcherSelected(newIndex));
        });

        String allowedFields = "((author|abstract|journal|title|year|year-range):\\s?)?";
        // Either a single word, or a phrase with quotes, or a year-range
        String allowedTermText = "(((\\d{4}-\\d{4})|(\\w+)|(\"\\w+[^\"]*\"))\\s?)+";
        queryPattern = Pattern.compile("^(" + allowedFields + allowedTermText + ")+$");
        String laxFields = "(\\w+:\\s?)?";
        laxQueryPattern = Pattern.compile("^(" + laxFields + allowedTermText + ")+$");
    }

    public ObservableList<SearchBasedFetcher> getFetchers() {
        return fetchers.get();
    }

    public ListProperty<SearchBasedFetcher> fetchersProperty() {
        return fetchers;
    }

    public SearchBasedFetcher getSelectedFetcher() {
        return selectedFetcher.get();
    }

    public ObjectProperty<SearchBasedFetcher> selectedFetcherProperty() {
        return selectedFetcher;
    }

    public String getQuery() {
        return query.get();
    }

    public StringProperty queryProperty() {
        return query;
    }

    public void search() {
        if (StringUtil.isBlank(getQuery())) {
            dialogService.notify(Localization.lang("Please enter a search string"));
            return;
        }

        if (stateManager.getActiveDatabase().isEmpty()) {
            dialogService.notify(Localization.lang("Please open or start a new library before searching"));
            return;
        }

        SearchBasedFetcher activeFetcher = getSelectedFetcher();

        BackgroundTask<ParserResult> task;
        task = BackgroundTask.wrap(() -> new ParserResult(activeFetcher.performSearch(getQuery().trim())))
                             .withInitialMessage(Localization.lang("Processing %0", getQuery().trim()));
        task.onFailure(dialogService::showErrorDialogAndWait);

        ImportEntriesDialog dialog = new ImportEntriesDialog(stateManager.getActiveDatabase().get(), task);
        dialog.setTitle(activeFetcher.getName());
        dialogService.showCustomDialogAndWait(dialog);
    }

    // CS304 Issue link: https://github.com/JabRef/jabref/issues/7411
    /**
     * validates query string and gives color feedback
     *
     * @param querySource TextField which gives the query
     * @param queryString Content user provides for query
     */
    public void validateQueryStringAndGiveColorFeedback(TextField querySource, String queryString) {
        if (!queryString.strip().isBlank() && !isPatternMatched(queryPattern, queryString)) {
            if (isPatternMatched(laxQueryPattern, queryString)) {
                setPseudoClassToUnsupported(querySource);
                querySource.setTooltip(new Tooltip(Localization.lang("This query uses unsupported fields.")));
            } else {
                setPseudoClassToInvalid(querySource);
                querySource.setTooltip(new Tooltip(Localization.lang("This query uses unsupported syntax.")));
            }
        } else if (containsYearAndYearRange(queryString)) {
            setPseudoClassToInvalid(querySource);
            querySource.setTooltip(new Tooltip(Localization.lang("The query cannot contain a year and year-range field.")));
        } else {
            setPseudoClassToValid(querySource);
        }
    }

    // CS304 Issue link: https://github.com/JabRef/jabref/issues/7411
    /**
     * sets pseudo class to unsupported
     *
     * @param querySource TextField which gives the query
     */
    private void setPseudoClassToUnsupported(TextField querySource) {
        querySource.pseudoClassStateChanged(PseudoClass.getPseudoClass("invalid"), false);
        querySource.pseudoClassStateChanged(PseudoClass.getPseudoClass("unsupported"), true);
    }

    // CS304 Issue link: https://github.com/JabRef/jabref/issues/7411
    /**
     * sets pseudo class to valid
     *
     * @param querySource TextField which gives the query
     */
    public void setPseudoClassToValid(TextField querySource) {
        querySource.pseudoClassStateChanged(PseudoClass.getPseudoClass("invalid"), false);
        querySource.pseudoClassStateChanged(PseudoClass.getPseudoClass("unsupported"), false);
    }

    // CS304 Issue link: https://github.com/JabRef/jabref/issues/7411
    /**
     * sets pseudo class to invalid
     *
     * @param querySource TextField which gives the query
     */
    private void setPseudoClassToInvalid(TextField querySource) {
        querySource.pseudoClassStateChanged(PseudoClass.getPseudoClass("invalid"), true);
    }

    // CS304 Issue link: https://github.com/JabRef/jabref/issues/7411
    /**
     * checks if the queryString contains year and year range
     *
     * @param queryString Content user provides for query
     * @return true if contains, otherwise false
     */
    private boolean containsYearAndYearRange(String queryString) {
        return queryString.toLowerCase().contains("year:") && queryString.toLowerCase().contains("year-range:");
    }

    // CS304 Issue link: https://github.com/JabRef/jabref/issues/7411
    /**
     * checks if the queryString is in format of pattern
     * uses Thread Pool to control the match time
     *
     * @param pattern
     * @param queryString Content user provides for query
     * @return true if matched, false otherwise
     */
    private boolean isPatternMatched(Pattern pattern, String queryString) {
        boolean isMatched = true;

        try {
            BackgroundTask.wrap(() -> pattern.matcher(queryString.strip()).matches())
                          .executeWith((TaskExecutor) executor)
                          .get(1000 * 10, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            isMatched = false;
        }

        executor.shutdown();
        return isMatched;
    }
}
