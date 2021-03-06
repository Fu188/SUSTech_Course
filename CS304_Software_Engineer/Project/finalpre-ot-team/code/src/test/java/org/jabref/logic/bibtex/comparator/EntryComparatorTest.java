package org.jabref.logic.bibtex.comparator;

import org.jabref.model.entry.BibEntry;
import org.jabref.model.entry.field.InternalField;
import org.jabref.model.entry.field.StandardField;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class EntryComparatorTest {
    @Test
    void recognizeIdenticObjectsAsEqual() {
        BibEntry e1 = new BibEntry();
        BibEntry e2 = e1;
        assertEquals(0, new EntryComparator(false, false, StandardField.TITLE).compare(e1, e2));
    }

    // CS304 Issue link: https://github.com/JabRef/jabref/issues/7395
    /**
     *
     */
    @Test
    void compareObjectsByKeyAscending() {
        BibEntry e1 = new BibEntry();
        BibEntry e2 = new BibEntry();
        e1.setCitationKey("Mayer2019b");
        e2.setCitationKey("Mayer2019a");
        assertEquals(1, new EntryComparator(false, false, InternalField.KEY_FIELD).compare(e1, e2));
        assertEquals(-1, new EntryComparator(false, false, InternalField.KEY_FIELD).compare(e2, e1));
    }

    // CS304 Issue link: https://github.com/JabRef/jabref/issues/7395
    /**
     * tests whether entries with null key will be compared correctly
     */
    @Test
    void compareObjectsByKeyWithNull() {
        BibEntry e1 = new BibEntry();
        BibEntry e2 = new BibEntry();
        e1.setCitationKey("Mayer2019b");
        assertEquals(-1, new EntryComparator(false, false, InternalField.KEY_FIELD).compare(e1, e2));
        assertEquals(1, new EntryComparator(false, false, InternalField.KEY_FIELD).compare(e2, e1));
    }

    // CS304 Issue link: https://github.com/JabRef/jabref/issues/7395
    /**
     * tests whether entries with blank key will be compared correctly
     */
    @Test
    void compareObjectsByKeyWithBlank() {
        BibEntry e1 = new BibEntry();
        BibEntry e2 = new BibEntry();
        e1.setCitationKey("Mayer2019b");
        e2.setCitationKey(" ");
        assertEquals(-1, new EntryComparator(false, false, InternalField.KEY_FIELD).compare(e1, e2));
        assertEquals(1, new EntryComparator(false, false, InternalField.KEY_FIELD).compare(e2, e1));
    }
}
