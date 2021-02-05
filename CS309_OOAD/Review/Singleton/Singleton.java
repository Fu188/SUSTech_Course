package Singleton;

class Singleton1{
    private static Singleton1 uniqueInstance;

    private Singleton1(){}

    public static synchronized Singleton1 getInstance(){
        if(uniqueInstance==null){
            uniqueInstance = new Singleton1();
        }
        return uniqueInstance;
    }
}

class Singleton2{
    public static Singleton2 uniqueInstance = new Singleton2();

    private Singleton2(){}

    public static Singleton2 getInstance(){
        return uniqueInstance;
    }
}

class Singleton3{
    public static volatile Singleton3 uniqueInstance;

    private Singleton3(){}

    public static Singleton3 getInstance(){
        if(uniqueInstance==null){
            synchronized(Singleton3.class){
                uniqueInstance = new Singleton3();
            }
        }
        return uniqueInstance;
    }
}