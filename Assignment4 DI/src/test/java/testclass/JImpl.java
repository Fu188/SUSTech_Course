package testclass;

import annotations.Inject;
import annotations.Value;

public class JImpl implements J {
    private E eDep;

    private boolean[] bools;

    @Value(value = "j.integers", delimiter = "-")
    private Integer[] integers;

    private String[] strings;

    public JImpl(E eDep) {

    }

    @Inject
    public JImpl(E eDep, @Value("j.bools") boolean[] bools) {
        this.eDep = eDep;
        this.bools = bools;
    }

//    @Override
//    @Inject
//    public void setStrings(@Value("j.strings") String[] strings) {
//        this.strings = strings;
//    }

    @Override
    public E getEDep() {
        return eDep;
    }

    @Override
    public boolean[] getBools() {
        return bools;
    }

    @Override
    public Integer[] getIntegers() {
        return integers;
    }

    @Override
    public String[] getStrings() {
        return strings;
    }
}
