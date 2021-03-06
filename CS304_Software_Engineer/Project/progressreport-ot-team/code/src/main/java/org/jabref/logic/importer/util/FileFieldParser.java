package org.jabref.logic.importer.util;

import java.net.MalformedURLException;
import java.net.URL;
import java.nio.file.InvalidPathException;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.jabref.model.entry.LinkedFile;

public class FileFieldParser {

    public static List<LinkedFile> parse(String value) {
        List<LinkedFile> files = new ArrayList<>();

        if ((value == null) || value.trim().isEmpty()) {
            return files;
        }

        List<String> linkedFileData = new ArrayList<>();
        StringBuilder sb = new StringBuilder();
        boolean inXmlChar = false;
        boolean escaped = false;

        for (int i = 0; i < value.length(); i++) {
            char c = value.charAt(i);
            if (!escaped && (c == '\\')) {
                escaped = true;
                continue;
            } else if (!escaped && (c == '&') && !inXmlChar) {
                // Check if we are entering an XML special character construct such
                // as "&#44;", because we need to know in order to ignore the semicolon.
                sb.append(c);
                if ((value.length() > (i + 1)) && (value.charAt(i + 1) == '#')) {
                    inXmlChar = true;
                }
            } else if (!escaped && inXmlChar && (c == ';')) {
                // Check if we are exiting an XML special character construct:
                sb.append(c);
                inXmlChar = false;
            } else if (!escaped && (c == ':')) {
                // We are in the next LinkedFile data element
                linkedFileData.add(sb.toString());
                sb = new StringBuilder();
            } else if (!escaped && (c == ';') && !inXmlChar) {
                linkedFileData.add(sb.toString());
                files.add(convert(linkedFileData));

                // next iteration
                sb = new StringBuilder();
            } else {
                sb.append(c);
            }
            escaped = false;
        }
        if (sb.length() > 0) {
            linkedFileData.add(sb.toString());
        }
        if (!linkedFileData.isEmpty()) {
            Optional.ofNullable(convert(linkedFileData)).ifPresent(files::add);
        }
        return files;
    }

    /**
     * Converts the given textual representation of a LinkedFile object
     *
     * SIDE EFFECT: The given entry list is cleared upon completion
     *
     * @param entry the list of elements in the linked file textual representation
     * @return a LinkedFile object
     */
    static LinkedFile convert(List<String> entry) {
        // ensure list has at least 3 fields
        while (entry.size() < 3) {
            entry.add("");
        }

        LinkedFile field = null;
        if (LinkedFile.isOnlineLink(entry.get(1))) {
            try {
                field = new LinkedFile(entry.get(0), new URL(entry.get(1)), entry.get(2));
            } catch (MalformedURLException ignored) {
                // in case the URL is malformed, store it nevertheless
                field = new LinkedFile(entry.get(0), entry.get(1), entry.get(2));
            }
        }

        try {
            if (field == null) {
                field = new LinkedFile(entry.get(0), Path.of(entry.get(1)), entry.get(2));
            }
            // link is only mandatory field
            if (field.getDescription().isEmpty() && field.getLink().isEmpty() && !field.getFileType().isEmpty()) {
                field = new LinkedFile("", Path.of(field.getFileType()), "");
            } else if (!field.getDescription().isEmpty() && field.getLink().isEmpty() && field.getFileType().isEmpty()) {
                field = new LinkedFile("", Path.of(field.getDescription()), "");
            }
            entry.clear();
        } catch (InvalidPathException ignored) {
            // ignored
        }

        return field;
    }
}
