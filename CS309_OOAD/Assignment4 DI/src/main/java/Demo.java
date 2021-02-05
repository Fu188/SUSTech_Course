import annotations.Inject;
import annotations.Value;

import java.lang.reflect.*;
import java.util.Arrays;

/**
 * Teaching demo of DI
 */
class AA {
    @Value(value = "15")
    private int field;

    private boolean[] booleans;

    private BB bb;
    private CC cc;

    public AA(BB bb, CC cc) {
        this.bb = bb;
        this.cc = cc;
    }

    @Inject
    public AA(BB bb, CC cc, @Value(value = "true,false,true,false") boolean[] booleans) {
        this.bb = bb;
        this.cc = cc;
        this.booleans = booleans;
    }

    public AA(int field) {

    }

    public int getField() {
        return field;
    }

    @Override
    public String toString() {
        return "AA{" +
                "field=" + field +
                ", booleans=" + Arrays.toString(booleans) +
                ", bb=" + bb +
                ", cc=" + cc +
                '}';
    }
}

class BB {
}

class CC {
}

public class Demo {
    public static void main(String[] args) {
        try {
            BB bObject = BB.class.getDeclaredConstructor().newInstance();
            CC cObject = CC.class.getDeclaredConstructor().newInstance();

            //get all constructors from AA
            //declared: that return all in current class
            System.out.println("---- Test get all declared constructors ----");
            Constructor[] constructorsA = AA.class.getDeclaredConstructors();
            Arrays.stream(constructorsA).forEach(System.out::println);


            //get all parameter types from constructor public AA(BB bb, CC cc)
            System.out.println();
            System.out.println("---- Test get all declared fields ----");
            Class[] fieldTypes = AA.class.getDeclaredConstructor(BB.class, CC.class).getParameterTypes();
            Arrays.stream(fieldTypes).forEach(System.out::println);

            //Why need to convert Class[] type to Object[] type?
            Object[] objects = new Object[]{bObject, cObject};

            //how to instantiate AA by public AA(BB bb, CC cc) ?
            System.out.println();
            System.out.println("---- Test instantiate AA by public AA(BB bb, CC cc) ----");
            AA aObject = AA.class.getDeclaredConstructor(BB.class, CC.class).newInstance(objects);
            System.out.println(aObject);


            //how to get constructor only with @Inject
            Constructor constructor = null;
            for (Constructor c : AA.class.getDeclaredConstructors()) {
                if (c.getAnnotation(Inject.class) != null) {
                    constructor = c;
                    break;
                }
            }
            System.out.println();
            System.out.println("---- Test get Parameter Types ----");
            Arrays.stream(constructor.getParameterTypes()).forEach(System.out::println);


            //get all parameter from constructor public AA(BB bb, CC cc)
            //You need to understand the difference between getParameterTypes() with getParameters()
            System.out.println();
            System.out.println("---- Test difference between Parameter and Types ----");
            Parameter[] parameters = constructor.getParameters();
            Object parameterObject = null;
            for (Parameter p : parameters) {
                if (p.getAnnotation(Value.class) != null) {
                    System.out.println("The name of parameter:" + p.getName());
                    System.out.println("The type of parameter:" + p.getType().getName());
                    Value valueAnnotation = p.getAnnotation(Value.class);
                    System.out.println("value = " + valueAnnotation.value());
                    System.out.println("delimiter = " + valueAnnotation.delimiter());

                    if (p.getType() == boolean[].class) {
                        String[] strings = valueAnnotation.value().split(valueAnnotation.delimiter());
                        boolean[] booleans = new boolean[strings.length];
                        for (int i = 0; i < strings.length; i++) {
                            booleans[i] = Boolean.parseBoolean(strings[i]);
                        }
                        parameterObject = booleans;
                    }
                }
            }


            //public AA(BB bb, CC cc, @Value(value = "true,false,true,false") boolean[] booleans)
            System.out.println();
            System.out.println("---- Test instantiate AA by public AA(BB bb, CC cc,  boolean[] booleans) ----");
            Object[] objects2 = {bObject, cObject, parameterObject};
            AA aObject2 = (AA) constructor.newInstance(objects2);
            System.out.println(aObject2);

            //How to inject value into a field?
            System.out.println();
            System.out.println("---- Test inject field----");
            Field field = aObject.getClass().getDeclaredField("field");
            if (field.getAnnotation(Value.class) != null) {
                Value valueAnnotation = field.getAnnotation(Value.class);
                if (field.getType() == int.class) {
                    field.setAccessible(true);
                    field.set(aObject, Integer.parseInt(valueAnnotation.value()));
                    field.setAccessible(false);
                }
            }
            System.out.println(aObject.getField());

            //parse String type to any wrapper type of primitive type
            String value = "10";
            Class<?> sourceType = Integer.class;
            Object target = sourceType.getConstructor(String.class).newInstance(value);

            //parse String type to any primitive type
            Class<?> sourceType2 = int.class;
            Object target2 = Integer.parseInt(value);

            //parse String array to any type array
            String[] stringArray = {"1", "2", "3"};
            Class<?> sourceType3 = Integer[].class;
            Object target3 = Array.newInstance(sourceType3.getComponentType(), stringArray.length);
            for (int i = 0; i < stringArray.length; i++) {
                Array.set(target3, i, Integer.parseInt(stringArray[i]));
            }
            System.out.println("\n ---- Test Array ----");
            System.out.println(Arrays.toString((Integer[])target3));

            //Now you can feel relax finishing this assignment!

        } catch (InstantiationException | IllegalAccessException | InvocationTargetException | NoSuchMethodException |
                NoSuchFieldException e) {
            e.printStackTrace();
        }
    }
}
