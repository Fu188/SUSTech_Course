package Bridge;

public class Blue implements Color{
    @Override
    public void bePaint(String shape){
        System.out.println("Blue "+shape);
    }
}
