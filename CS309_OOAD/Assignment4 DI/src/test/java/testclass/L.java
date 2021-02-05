package testclass;

import annotations.Inject;
import annotations.Value;

public class L {
    private B bDep;

    private boolean bool;

    public L() {

    }

    @Inject
    public L(B bDep, @Value("l.val") boolean bool) {
        this.bDep = bDep;
        this.bool = bool;
    }

    public B getBDep() {
        return bDep;
    }

    public boolean isBool() {
        return bool;
    }
}
