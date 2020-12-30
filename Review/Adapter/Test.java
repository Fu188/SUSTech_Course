package Adapter;

public class Test {
    public static void main(String[] args) {
        WildTurkey wildTurkey = new WildTurkey();
        Duck adapter = new Adapter(wildTurkey);
        adapter.quack();
        adapter.fly();
    }
}
