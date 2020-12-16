import org.junit.*;
import static org.junit.Assert.*;
import java.util.Date;

public class TestMovieRental {
    Customer C1;
    Customer C2;
    Customer C3;
    Customer C4;

    String M1_Title;
    int M1_PriceCode;

    String M2_Title;
    int M2_PriceCode;

    String M3_Title;
    int M3_PriceCode;

    @Before
    public void setUp() {
        C1 = new Customer("John");
        C2 = new Customer("Mary");
        C3 = new Customer("Manny");

        M1_Title = "Oz The Great and Powerful";
        M1_PriceCode = Movie.NEW_RELEASE;

        M2_Title = "The Dark Knight";
        M2_PriceCode = Movie.REGULAR;

        M3_Title = "Wreck-it Ralph";
        M3_PriceCode = Movie.CHILDRENS;
    }

    @Test
    public void test1() {
        Date start = new Date(2013, 7, 1);
        Date end1 = new Date(2013, 7, 6);
        Date end2 = new Date(2013, 7, 4);
        Date end3 = new Date(2013, 7, 5);

        C1.addRental(new Rental(new Movie(M1_Title, M1_PriceCode), new DateRange(start, end1)));
        C1.addRental(new Rental(new Movie(M2_Title, M2_PriceCode), new DateRange(start, end2)));
        C1.addRental(new Rental(new Movie(M3_Title, M3_PriceCode), new DateRange(start, end3)));
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
    public void test2() {
        Date start = new Date(2013, 7, 11);
        Date end1 = new Date(2013, 7, 12);
        Date end2 = new Date(2013, 7, 19);
        C2.addRental(new Rental(new Movie(M1_Title, M1_PriceCode), new DateRange(start, end1)));
        C2.addRental(new Rental(new Movie(M3_Title, M3_PriceCode), new DateRange(start, end2)));
        StringBuilder ans1 = new StringBuilder("Rental Record for Mary\n");
        ans1.append("\tOz The Great and Powerful\t3.0\n");
        ans1.append("\tWreck-it Ralph\t9.0\n");
        ans1.append("Amount owed is 12.0\n");
        ans1.append("You earned 2 frequent renter points");
        String ans = ans1.toString();
        assertTrue(ans.equals(C2.statement())); 
    }

    @Test
    public void test3() {
        Date start = new Date(2013, 6, 1);
        Date end1 = new Date(2013, 6, 3);
        Date end2 = new Date(2013, 6, 2);
        C3.addRental(new Rental(new Movie(M2_Title, M2_PriceCode), new DateRange(start, end1)));
        C3.addRental(new Rental(new Movie(M3_Title, M3_PriceCode), new DateRange(start, end2)));
        StringBuilder ans1 = new StringBuilder("Rental Record for Manny\n");
        ans1.append("\tThe Dark Knight\t2.0\n");
        ans1.append("\tWreck-it Ralph\t1.5\n");
        ans1.append("Amount owed is 3.5\n");
        ans1.append("You earned 2 frequent renter points");
        String ans = ans1.toString();
        assertTrue(ans.equals(C3.statement())); 
    }
}
