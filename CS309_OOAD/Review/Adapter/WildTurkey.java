package Adapter;

public class WildTurkey implements Turkey {
    @Override
    public void gobble() {
        System.out.println("abab");
    }

    @Override
    public void fly() {
        System.out.println("TurkeyFly");
    }
}
