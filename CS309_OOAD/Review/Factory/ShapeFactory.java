package Factory;

public class ShapeFactory {
    public ShapeFactory(){

    }

    public Shape getShape(String shape){
        if (shape.equals("Circle")) return new Circle();
        if (shape.equals("Rectangle")) return new Rectangle();
        return null;
    }
}
