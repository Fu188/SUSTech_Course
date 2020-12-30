package Factory;

public abstract class Pizza {
    String name;
    String dough;

    public void prepare(){
        System.out.println("Preparing: "+dough);
    }

    public String getName(){
        return name;
    }
}
