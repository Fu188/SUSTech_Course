import static org.junit.Assert.*;
import org.junit.Test;

public class TriTypTest {
    @Test
    public void TestZjy1(){
        //scalene
        assertEquals(1, trityp.Triang(3, 4, 2));
    }

    @Test
    public void TestZjy2(){
        //isosceles
        assertEquals(2, trityp.Triang(1, Integer.MAX_VALUE, Integer.MAX_VALUE));
    }

    @Test
    public void TestZjy3(){
        //equilateral
        assertEquals(3, trityp.Triang(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE));
    }

    @Test
    public void TestZjy4(){
        //not valid
        assertEquals(4, trityp.Triang(1, 1, Integer.MAX_VALUE));
    }
    
    @Test
    public void testLargestEquilateral()
    {
        assertEquals(3,trityp.Triang(Integer.MAX_VALUE,Integer.MAX_VALUE,Integer.MAX_VALUE));
    }
    @Test
    public void testLargeScalene()
    {
        assertEquals(1,trityp.Triang(Integer.MAX_VALUE,Integer.MAX_VALUE-1,Integer.MAX_VALUE-2));
    }
    @Test
    public void testLargeIsosceles()
    {
        assertEquals(2,trityp.Triang(Integer.MAX_VALUE,Integer.MAX_VALUE-1,Integer.MAX_VALUE-1));
    }
    @Test
    public void testLargeLine()
    {
        assertEquals(4,trityp.Triang(Integer.MAX_VALUE,Integer.MAX_VALUE/2,Integer.MAX_VALUE-Integer.MAX_VALUE/2));
    }

    @Test
    public void NotTriTest(){
        assertEquals(4,trityp.Triang(0,0,0));
        assertEquals(4,trityp.Triang(0,3,2));
        assertEquals(4, trityp.Triang(-3,4,5));
        assertEquals(4,trityp.Triang(2,2,4));
        assertEquals(4,trityp.Triang(3,3,7));
    }

    @Test
    public void scaleneTest(){
        assertNotEquals(1,trityp.Triang(2,3,3));
        assertNotEquals(1,trityp.Triang(3,3,3));
        assertEquals(1,trityp.Triang(3,4,5));
    }

    @Test
    public void isoscelesTest(){
        assertEquals(2,trityp.Triang(3,3,2));
        assertEquals(2,trityp.Triang(1,Integer.MAX_VALUE,Integer.MAX_VALUE));
        assertNotEquals(2,trityp.Triang(4,4,4));
    }

    @Test
    public void equilateralTest(){
        assertEquals(3,trityp.Triang(3,3,3));
        assertEquals(3,trityp.Triang(Integer.MAX_VALUE,Integer.MAX_VALUE,Integer.MAX_VALUE));
        assertNotEquals(3,trityp.Triang(0,0,0));
    }
}
