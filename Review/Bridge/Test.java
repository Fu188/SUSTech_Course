package Bridge;

public class Test {
    public static void main(String[] args) {
        Shape redCircle = new Circle(5,5,2,new RedCircle());
        Shape blueCicle = new Circle(2,2,5,new BlueCircle());

        redCircle.draw();
        blueCicle.draw();
    }
}
