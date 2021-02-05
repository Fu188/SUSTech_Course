package FlyWeight;

public class Test {
    public static void main(String[] args) {
        for(int i=0;i<20;i++){
            Circle circle = (Circle)ShapeFactory.getCircle("blue");
            circle.setX(5);
            circle.setY(2);
            circle.draw();
        }
        for(int i=0;i<20;i++){
            Circle circle = (Circle)ShapeFactory.getCircle("red");
            circle.setX(5);
            circle.setY(2);
            circle.draw();
        }
    }
}
