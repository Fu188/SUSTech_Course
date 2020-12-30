package FlyWeight;

import java.util.HashMap;

public class ShapeFactory {
    private static HashMap<String,Circle> circleHashMap = new HashMap<>();

    public static Shape getCircle(String color){
        Circle circle = circleHashMap.get(color);

        if(circle == null){
            circle = new Circle(color);
            circleHashMap.put(color,circle);
            System.out.println("Creating circle: "+color);
        }
        return circle;
    }
}
