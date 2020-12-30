package Bridge;

public class RedCircle implements DrawAPI {

    @Override
    public void draw(int r, int x, int y) {
        System.out.println("Drawing Circle[ color: red, radius: " + r +", x: " +x+", "+ y +"]");
    }
}
