package SimpleFactory;

public class ITStaffFactory {
    public ITStaff createITStaff(String type){
        ITStaff itStaff = null;
        if(type.equals("Developer")){
            itStaff = new Developer();
        }else if(type.equals("ITManager")){
            itStaff = new ITManager();
        }else if(type.equals("Tester")){
            itStaff = new Tester();
        }
        return itStaff;
    }
}
