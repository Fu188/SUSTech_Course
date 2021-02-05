package Bridge;

public class Test {
    public static void main(String[] args) {
        Color red = new Red();
        Color blue = new Blue();
        Shape cicle = new Circle();
        Shape rectangle = new Rectangle();
        cicle.setColor(red);
        cicle.draw();
        cicle.setColor(blue);
        cicle.draw();
        rectangle.setColor(blue);
        rectangle.draw();
    }
}
