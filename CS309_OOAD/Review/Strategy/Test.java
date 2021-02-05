package Strategy;

public class Test {
    public static void main(String[] args) {
        Context context = new Context(new OperationAdd());
        System.out.println(context.executeStrategy(10,5));
        context = new Context(new OperationSubstract());
        System.out.println(context.executeStrategy(10,5));
    }
}
