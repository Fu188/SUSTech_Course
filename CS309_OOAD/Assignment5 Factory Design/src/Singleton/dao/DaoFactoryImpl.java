package Singleton.dao;

import java.lang.reflect.InvocationTargetException;

/**
public class DaoFactoryImpl {
    private static DaoFactory instance = null;

    private DaoFactoryImpl(){}

    public static synchronized DaoFactory getInstance(Class clz) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException {
        if(instance==null){
            instance = (DaoFactory) clz.getDeclaredConstructor().newInstance();
        }
        return instance;
    }
}
*/

public class DaoFactoryImpl{
    private volatile static DaoFactory instance;

    private DaoFactoryImpl(){}

    public static DaoFactory getInstance(Class clz) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException {
        if(instance == null){
            synchronized (DaoFactory.class){
                if(instance==null){
                    instance = (DaoFactory) clz.getDeclaredConstructor().newInstance();
                }
            }
        }
        return instance;
    }
}
