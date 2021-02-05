package AbstractFactory;

public class FactoryProducer {
    public AbstractFactory getFactory(String factory){
        if (factory.equals("Shape")) return new ShapeFactory();
        if (factory.equals("Color")) return new ColorFactory();
        return null;
    }
}
