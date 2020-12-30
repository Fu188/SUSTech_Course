package Factory;

public class Test {
    public static void main(String[] args) {
        PizzaStore pizzaStoreA = new APizzaFactory();
        PizzaStore pizzaStoreB = new BPizzaFactory();
        System.out.println(pizzaStoreA.orderPizza("1").getName());
        System.out.println(pizzaStoreA.orderPizza("2").getName());
        System.out.println(pizzaStoreB.orderPizza("1").getName());
        System.out.println(pizzaStoreB.orderPizza("2").getName());
    }
}
