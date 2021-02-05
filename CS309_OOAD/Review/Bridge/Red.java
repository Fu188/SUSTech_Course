package Bridge;

public class Red implements Color{
    @Override
    public void bePaint(String shape){
        System.out.println("Red " + shape);
    }
}
