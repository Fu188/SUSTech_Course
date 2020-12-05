import testclass.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.io.File;

import static org.junit.jupiter.api.Assertions.*;

public class BeanFactoryLocalJudge {

    private BeanFactory beanFactory;

    @BeforeEach
    public void setup() {
        this.beanFactory = new BeanFactoryImpl();
        beanFactory.loadInjectProperties(new File("inject.properties"));
        beanFactory.loadValueProperties(new File("value.properties"));
    }

    @Test
    public void testResolveWithNoDependency() {
        A instance = beanFactory.createInstance(A.class);
        assertNotNull(instance);
    }

    @Test
    public void testWithConstructorDependency() {
        B instance = beanFactory.createInstance(B.class);
        assertNotNull(instance);
        assertNotNull(instance.getCDep());
        assertNotNull(instance.getDDep());
    }

    @Test
    public void testWithAnnotationDependency() {
        G instance = beanFactory.createInstance(G.class);
        assertNotNull(instance);
        assertNotNull(instance.getCDep());
        assertNotNull(instance.getDDep());
    }

    @Test
    public void testMixedDependencies() {
        H instance = beanFactory.createInstance(H.class);
        assertNotNull(instance);
        assertNotNull(instance.getCDep());
        assertNotNull(instance.getDDep());
    }

    @Test
    public void testImplTypeForInterface() {
        E instance = beanFactory.createInstance(E.class);
        assertNotNull(instance);
        assertTrue(instance instanceof EImpl);
    }

    @Test
    public void testImplTypeForAbstractClass() {
        F instance = beanFactory.createInstance(F.class);
        assertNotNull(instance);
        assertTrue(instance instanceof FEnhanced);
    }

    @Test
    public void testDependencyImpl() {
        K instance = beanFactory.createInstance(K.class);
        assertNotNull(instance);
        assertNotNull(instance.getEDep());
        assertNotNull(instance.getFDep());
        assertTrue(instance.getEDep() instanceof EImpl);
        assertTrue(instance.getFDep() instanceof FEnhanced);
    }

    @Test
    public void testConstructorInject() {
        L instance = beanFactory.createInstance(L.class);
        assertNotNull(instance);
        assertNotNull(instance.getBDep());
        assertTrue(instance.isBool());
    }

    @Test
    public void testFieldWithValue() {
        D instance = beanFactory.createInstance(D.class);
        assertEquals(10, instance.getVal());
    }

    @Test
    public void testPrimitiveArrayValues() {
        J instance = beanFactory.createInstance(J.class);
        assertNotNull(instance);
        assertTrue(instance instanceof JImpl);
        assertArrayEquals(new boolean[]{true, false, false, true}, instance.getBools());
    }

    @Test
    public void testWrappedPrimitiveArrayValues() {
        J instance = beanFactory.createInstance(J.class);
        assertNotNull(instance);
        assertTrue(instance instanceof JImpl);
        assertArrayEquals(new Integer[]{2, 3, 5, 7, 11}, instance.getIntegers());
    }

    @Test
    public void testStringArrayValues() {
        J instance = beanFactory.createInstance(J.class);
        assertNotNull(instance);
        assertTrue(instance instanceof JImpl);
    }
}
