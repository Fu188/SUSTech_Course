package Command;

public class Test {
    public static void main(String[] args) {
        SimpleRemote simpleRemote = new SimpleRemote();
        Light light = new Light();
        LightOnCommand lightOnCommand = new LightOnCommand(light);
        LightOffCommand lightOffCommand = new LightOffCommand(light);

        simpleRemote.setCommand(lightOnCommand);
        simpleRemote.buttonWasPressed();
        simpleRemote.setCommand(lightOffCommand);
        simpleRemote.buttonWasPressed();
    }
}
