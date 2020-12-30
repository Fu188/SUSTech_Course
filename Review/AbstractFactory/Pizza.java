package AbstractFactory;

public abstract class Pizza {
    String name;
    String dough;

    public abstract void prepare();

    public String getName(){
        return name;
    }

    public String toString(){
        System.out.println(name +"   " +dough);
        return null;
    }
}
