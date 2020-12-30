package Bridge;

public class Circle extends Shape{
    private int x,y,r;

    public Circle(int x,int y,int r,DrawAPI drawAPI){
        super(drawAPI);
        this.x = x;
        this.y = y;
        this.r = r;
    }

    @Override
    public void draw() {
        drawAPI.draw(r,x,y);
    }
}
