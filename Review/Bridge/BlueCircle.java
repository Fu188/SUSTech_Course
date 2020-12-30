package Bridge;

public class BlueCircle implements DrawAPI {
    @Override
    public void draw(int r, int x, int y) {
        System.out.println("Drawing Circle[ color: blue, radius: " + r +", x: " +x+", "+ y +"]");
    }
}
