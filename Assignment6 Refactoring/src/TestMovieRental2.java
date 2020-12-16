//import static org.junit.jupiter.api.Assertions.*;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Date;

//import org.junit.jupiter.api.Test;




public class Test2 {
    Customer C1;
    Customer C2;
    Customer C3;
    Movie M1;
    Movie M2;
    Movie M3;

    @Before
    public void setUp() {
        C1 = new Customer("John");
        C2 = new Customer("Mary");
        C3 = new Customer("Manny");

        M1 = new Movie("Oz The Great and Powerful", Movie.NEW_RELEASE);
        M2 = new Movie("The Dark Knight", Movie.REGULAR);
        M3 = new Movie("Wreck-it Ralph", Movie.CHILDRENS);
    }

    @Test
    public void check_Movie_class() throws Exception {Class.forName("Movie");}

    @Test
    public void check_Rental_class() throws Exception {Class.forName("Rental");}

    @Test
    public void check_DateRange_class() throws Exception {Class.forName("DateRange");}

    @Test
    public void check_Price_class() throws Exception {
        Class<?> priceClass = Class.forName("Price");
        assertTrue(Modifier.isAbstract(priceClass.getModifiers()));
    }

    @Test
    public void check_Price_subclass() throws Exception {
        Class<?> priceClass = Class.forName("Price");
        Class<?> childrensPriceClass = Class.forName("ChildrensPrice");
        Class<?> newReleasePriceClass = Class.forName("NewReleasePrice");
        Class<?> regularPriceClass = Class.forName("RegularPrice");
        assertTrue(priceClass.isAssignableFrom(childrensPriceClass));
        assertTrue(priceClass.isAssignableFrom(newReleasePriceClass));
        assertTrue(priceClass.isAssignableFrom(regularPriceClass));
    }

    @Test
    public void check_FrequentRenterPoints() throws Exception {
        Class<?> movieClass = Class.forName("Movie");
        Class<?> rentalClass = Class.forName("Rental");
        Class<?> priceClass = Class.forName("Price");
        Class<?>[] args = new Class[0];
        rentalClass.getDeclaredMethod("getFrequentRenterPoints", args);
        args = new Class[1];
        args[0] = int.class;
        movieClass.getDeclaredMethod("getFrequentRenterPoints", args);
        priceClass.getDeclaredMethod("getFrequentRenterPoints", args);
    }

    @Test
    public void check_Price_abstractMethods() throws Exception {
        Class<?> priceClass = Class.forName("Price");
        Class<?>[] args = new Class[0];
        Method getPriceCodeMethod = priceClass.getDeclaredMethod("getPriceCode", args);
        assertTrue(Modifier.isAbstract(getPriceCodeMethod.getModifiers()));
        args = new Class[1];
        args[0] = int.class;
        Method getChargeMethod = priceClass.getDeclaredMethod("getCharge", args);
        assertTrue(Modifier.isAbstract(getChargeMethod.getModifiers()));
    }

    @Test
    public void check_NewReleasePrice_overrideMethod() throws Exception {
        Class<?> priceClass = Class.forName("Price");
        Class<?> newReleasePriceClass = Class.forName("NewReleasePrice");
        Class<?>[] args = new Class[1];
        args[0] = int.class;
        priceClass.getDeclaredMethod("getFrequentRenterPoints", args);
        newReleasePriceClass.getDeclaredMethod("getFrequentRenterPoints", args);
    }

    @Test
    public void test_Movie_getCharge() throws Exception{
        Class<?> movieClass = Class.forName("Movie");
        Class<?>[] args = new Class[1];
        args[0] = int.class;
        movieClass.getDeclaredMethod("getCharge", args);
        assertEquals(3, M1.getCharge(1), 0.00001);
        assertEquals(15, M1.getCharge(5), 0.00001);
        assertEquals(2, M2.getCharge(1), 0.00001);
        assertEquals(6.5, M2.getCharge(5), 0.00001);
        assertEquals(1.5, M3.getCharge(1), 0.00001);
        assertEquals(4.5, M3.getCharge(5), 0.00001);
    }

    @Test
    public void test_Movie_getFrequentRenterPoints() throws Exception{
        Class<?> movieClass = Class.forName("Movie");
        Class<?>[] args = new Class[1];
        args[0] = int.class;
        movieClass.getDeclaredMethod("getFrequentRenterPoints", args);
        assertEquals(1, M1.getFrequentRenterPoints(1));
        assertEquals(2, M1.getFrequentRenterPoints(2));
        assertEquals(2, M1.getFrequentRenterPoints(15));
        assertEquals(1, M2.getFrequentRenterPoints(1));
        assertEquals(1, M2.getFrequentRenterPoints(15));
        assertEquals(1, M3.getFrequentRenterPoints(1));
        assertEquals(1, M3.getFrequentRenterPoints(15));
    }

    @Test
    public void test_Rental_getCharge() throws Exception {
        Class<?> rentalClass = Class.forName("Rental");
        Class<?>[] args = new Class[0];
        rentalClass.getDeclaredMethod("getCharge", args);
        Date start = new Date(2013, 7, 1);
        Date end1 = new Date(2013, 7, 9);
        Date end2 = new Date(2013, 7, 11);
        Date end3 = new Date(2013, 7, 15);
        Rental r1 = new Rental(M1, new DateRange(start, end1));
        Rental r2 = new Rental(M2, new DateRange(start, end2));
        Rental r3 = new Rental(M3, new DateRange(start, end3));
        assertEquals(24, r1.getCharge(), 0.00001);
        assertEquals(14, r2.getCharge(), 0.00001);
        assertEquals(18, r3.getCharge(), 0.00001);
    }

    @Test
    public void test_Rental_getFrequentRenterPoints() throws Exception {
        Class<?> rentalClass = Class.forName("Rental");
        Class<?>[] args = new Class[0];
        rentalClass.getDeclaredMethod("getFrequentRenterPoints", args);
        Date start = new Date(2013, 7, 1);
        Date end1 = new Date(2013, 7, 2);
        Date end2 = new Date(2013, 7, 3);
        Date end3 = new Date(2013, 7, 14);
        assertEquals(1, new Rental(M1, new DateRange(start, end1)).getFrequentRenterPoints());
        assertEquals(2, new Rental(M1, new DateRange(start, end3)).getFrequentRenterPoints());
        assertEquals(1, new Rental(M2, new DateRange(start, end1)).getFrequentRenterPoints());
        assertEquals(1, new Rental(M2, new DateRange(start, end2)).getFrequentRenterPoints());
        assertEquals(1, new Rental(M3, new DateRange(start, end1)).getFrequentRenterPoints());
        assertEquals(1, new Rental(M3, new DateRange(start, end3)).getFrequentRenterPoints());
    }

    @Test
    public void testMovieRental1() {
        Date start = new Date(2013, 7, 1);
        Date end1 = new Date(2013, 7, 6);
        Date end2 = new Date(2013, 7, 4);
        Date end3 = new Date(2013, 7, 5);

        C1.addRental(new Rental(M1, new DateRange(start, end1)));
        C1.addRental(new Rental(M2, new DateRange(start, end2)));
        C1.addRental(new Rental(M3, new DateRange(start, end3)));
        StringBuilder ans1 = new StringBuilder("Rental Record for John\n");
        ans1.append("\tOz The Great and Powerful\t15.0\n");
        ans1.append("\tThe Dark Knight\t3.5\n");
        ans1.append("\tWreck-it Ralph\t3.0\n");
        ans1.append("Amount owed is 21.5\n");
        ans1.append("You earned 4 frequent renter points");
        String ans = ans1.toString();
        assertTrue(ans.equals(C1.statement()));
    }

    @Test
    public void testMovieRental2() {
        Date start = new Date(2013, 7, 11);
        Date end1 = new Date(2013, 7, 12);
        Date end2 = new Date(2013, 7, 19);
        C2.addRental(new Rental(M1, new DateRange(start, end1)));
        C2.addRental(new Rental(M3, new DateRange(start, end2)));
        StringBuilder ans1 = new StringBuilder("Rental Record for Mary\n");
        ans1.append("\tOz The Great and Powerful\t3.0\n");
        ans1.append("\tWreck-it Ralph\t9.0\n");
        ans1.append("Amount owed is 12.0\n");
        ans1.append("You earned 2 frequent renter points");
        String ans = ans1.toString();
        assertTrue(ans.equals(C2.statement()));
    }

    @Test
    public void testMovieRental3() {
        Date start = new Date(2013, 6, 1);
        Date end1 = new Date(2013, 6, 3);
        Date end2 = new Date(2013, 6, 2);
        C3.addRental(new Rental(M2, new DateRange(start, end1)));
        C3.addRental(new Rental(M3, new DateRange(start, end2)));
        StringBuilder ans1 = new StringBuilder("Rental Record for Manny\n");
        ans1.append("\tThe Dark Knight\t2.0\n");
        ans1.append("\tWreck-it Ralph\t1.5\n");
        ans1.append("Amount owed is 3.5\n");
        ans1.append("You earned 2 frequent renter points");
        String ans = ans1.toString();
        assertTrue(ans.equals(C3.statement()));
    }
}
