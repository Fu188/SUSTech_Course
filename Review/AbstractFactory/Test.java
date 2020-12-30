package AbstractFactory;

public class Test {
    public static void main(String[] args) {
        PizzaStore pizzaStoreA = new APizzaFactory();
        PizzaStore pizzaStoreB = new BPizzaFactory();
        pizzaStoreA.orderPizza("1").toString();
        pizzaStoreA.orderPizza("2").toString();
        pizzaStoreB.orderPizza("1").toString();
        pizzaStoreB.orderPizza("2").toString();
    }
}
