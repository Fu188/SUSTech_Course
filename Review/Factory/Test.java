package Factory;

public class Test {
    public static void main(String[] args) {
        ShapeFactory shapeFactory = new ShapeFactory();
        Shape shape = shapeFactory.getShape("Circle");
        shape.draw();
        shape = shapeFactory.getShape("Rectangle");
        shape.draw();
    }
}
