import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

public interface BeanFactory {
    void loadInjectProperties(File file);

    void loadValueProperties(File file);

    <T> T createInstance(Class<T> clazz);
}
