package AbstractFactory;

public class ShapeFactory extends AbstractFactory{
    public ShapeFactory(){

    }

    @Override
    public Shape getShape(String shape){
        if (shape.equals("Circle")) return new Circle();
        if (shape.equals("Rectangle")) return new Rectangle();
        return null;
    }

    @Override
    public Color getColor(String color){
        return null;
    }
}
