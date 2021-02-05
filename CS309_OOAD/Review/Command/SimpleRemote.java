package Command;

public class SimpleRemote {
    Command slot;

    public SimpleRemote(){}

    public void setCommand(Command command){
        slot = command;
    }

    public void buttonWasPressed(){
        slot.execute();
    }
}
