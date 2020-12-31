package AbstractFactory;

public class Test {
    public static void main(String[] args) {
        FactoryProducer factoryProducer = new FactoryProducer();
        AbstractFactory shapeFactory = factoryProducer.getFactory("Shape");
        Shape shape = shapeFactory.getShape("Circle");
        shape.draw();
        shape = shapeFactory.getShape("Rectangle");
        shape.draw();
        AbstractFactory colorFactory = factoryProducer.getFactory("Color");
        Color color = colorFactory.getColor("Red");
        color.fill();
        color = colorFactory.getColor("Blue");
        color.fill();
    }
}
