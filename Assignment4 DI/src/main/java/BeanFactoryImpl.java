import annotations.Inject;

import java.io.*;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.Properties;

public class BeanFactoryImpl implements BeanFactory {

    private Properties injectProperties = new Properties();
    private Properties valueProperties = new Properties();

    @Override
    public void loadInjectProperties(File file){
        try {
            InputStream inputStream = new BufferedInputStream(new FileInputStream(file));
            this.injectProperties.load(inputStream);
        }catch(IOException e){
            e.printStackTrace();
        }
    }

    @Override
    public void loadValueProperties(File file) {
        try {
            InputStream inputStream = new BufferedInputStream(new FileInputStream(file));
            this.valueProperties.load(inputStream);
        }catch(IOException e){
            e.printStackTrace();
        }
    }

    @Override
    public <T> T createInstance(Class<T> clazz){
        try{
            Class<?> Clz = clazz;
            Constructor constructor = null;
            for (Constructor c : AA.class.getDeclaredConstructors()) {
                if (c.getAnnotation(Inject.class) != null) {
                    constructor = c;
                    break;
                }
            }
            if (constructor == null){
                constructor = Clz.getDeclaredConstructor();
            }

            Object object = constructor.newInstance();
            Field[] ClzFields = Clz.getDeclaredFields();
            for(Field field: ClzFields){
                field.setAccessible(true);
                System.out.println(field.getType());
//                field.set(object, );
            }

            return (T) object;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
