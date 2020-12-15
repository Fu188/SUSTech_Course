import annotations.Inject;
import annotations.Value;

import java.awt.geom.FlatteningPathIterator;
import java.io.*;
import java.lang.reflect.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

public class BeanFactoryImpl implements BeanFactory {

    private Properties injectProperties = new Properties();
    private Properties valueProperties = new Properties();

    @Override
    public void loadInjectProperties(File file) {
        try {
            InputStream inputStream = new BufferedInputStream(new FileInputStream(file));
            this.injectProperties.load(inputStream);
            inputStream.close();
        }catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void loadValueProperties(File file) {
        try{
            InputStream inputStream = new BufferedInputStream(new FileInputStream(file));
            this.valueProperties.load(inputStream);
            inputStream.close();
        }catch (IOException e){
            e.printStackTrace();
        }
    }

    @Override
    public <T> T createInstance(Class<T> clazz) {
        String ClzName = clazz.getName();
        String ImplClzName = this.injectProperties.getProperty(ClzName);
        Class<?> Clz = clazz;
        Object object = null;
        List<Object> paraObject = new ArrayList<Object>();

        try{
            // Judge whether it is a Inherited class
            if(ImplClzName != null){
                Clz = Class.forName(ImplClzName);
            }

            // Select a constructor
            Constructor constructor = null;
            for (Constructor c: Clz.getDeclaredConstructors()) {
                if(c.getAnnotation(Inject.class)!=null){
                    constructor = c;
                    break;
                }
            }
            if(constructor==null) {
                constructor = Clz.getDeclaredConstructor();
            }

            // Instantiate parameters
            for(Parameter p: constructor.getParameters()){
                if(p.getAnnotation(Value.class)!=null){
                    paraObject.add(valueInstance(p.getType(),p.getAnnotation(Value.class)));
                }else{
                    paraObject.add(createInstance(p.getType()));
                }
            }

            // Instantiate the object
            object = constructor.newInstance(paraObject.toArray());

            // Instantiate declared fields
            for(Field f: Clz.getDeclaredFields()){
                if(f.getAnnotation(Inject.class)!=null){
                    f.setAccessible(true);
                    f.set(object,createInstance(f.getType()));
                    f.setAccessible(false);
                }
                if(f.getAnnotation(Value.class)!=null){
                    f.setAccessible(true);
                    f.set(object,valueInstance(f.getType(),f.getAnnotation(Value.class)));
                    f.setAccessible(false);
                }
            }

            return (T)object;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    private Object valueInstance(Class<?> clazz, Value valueAnnotation) {
        try{
            Object object;

            // To get the inject value
            String value = this.valueProperties.getProperty(valueAnnotation.value());
            if(value==null) value = valueAnnotation.value();

            // To instantiate an array
            if(clazz.isArray()){
                String[] array = value.split(valueAnnotation.delimiter());
                object = Array.newInstance(clazz.getComponentType(),array.length);
                for(int i=0;i<array.length;i++){
                    Array.set(object,i,toWrapperType(clazz.getComponentType(),array[i]));
                }
            }else{
                object = toWrapperType(clazz,value);
            }
            return object;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    private Object toWrapperType(Class<?> type, String value) {
        if(type == boolean.class) return Boolean.parseBoolean(value);
        if(type == Boolean.class) return Boolean.parseBoolean(value);
        if(type == byte.class) return Byte.parseByte(value);
        if(type == Byte.class) return Byte.parseByte(value);
        if(type == char.class) return value.charAt(0);
        if(type == Character.class) return value.charAt(0);
        if(type == short.class) return Short.parseShort(value);
        if(type == Short.class) return Short.parseShort(value);
        if(type == int.class) return Integer.parseInt(value);
        if(type == Integer.class) return Integer.parseInt(value);
        if(type == long.class) return Long.parseLong(value);
        if(type == Long.class) return Long.parseLong(value);
        if(type == float.class) return Float.parseFloat(value);
        if(type == Float.class) return Float.parseFloat(value);
        if(type == double.class) return Double.parseDouble(value);
        if(type == Double.class) return Double.parseDouble(value);
        if(type == String.class) return value;
        return value;
    }

//    private Class<?> toWrapperType(Class<?> clazz) throws ClassNotFoundException {
//        if(clazz==Boolean.TYPE) return Class.forName("java.lang.Boolean");
//        if(clazz==Byte.TYPE) return Class.forName("java.lang.Byte");
//        if(clazz==Character.TYPE) return Class.forName("java.lang.Character");
//        if(clazz==Short.TYPE) return Class.forName("java.lang.Short");
//        if(clazz==Integer.TYPE) return Class.forName("java.lang.Integer");
//        if(clazz==Long.TYPE) return Class.forName("java.lang.Long");
//        if(clazz==Float.TYPE) return Class.forName("java.lang.Float");
//        if(clazz==Double.TYPE) return Class.forName("java.lang.Double");
//        return clazz;
//    }
}
