package mutiAdapter;

import original.FileOperateInterfaceV1;
import original.FileOperateInterfaceV3;
import original.ManageStaffInterface;
import original.StaffModel;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

public class Adapter implements FileOperateInterfaceV3 {
    private FileOperateInterfaceV1 adaptee1;
    private ManageStaffInterface adaptee2;

    public Adapter(FileOperateInterfaceV1 adaptee1,ManageStaffInterface adaptee2){
        this.adaptee1 = adaptee1;
        this.adaptee2 = adaptee2;
    }

    @Override
    public void addNewStaff(List<StaffModel> list) {
        adaptee2.addingStaff(list);
    }

    @Override
    public void removeStaffByName(List<StaffModel> list) {
        adaptee2.removeStaff(list);
    }

    @Override
    public List<StaffModel> readAllStaff() {
        return adaptee1.readStaffFile();
    }

    @Override
    public void listAllStaff(List<StaffModel> list) {
        adaptee1.printStaffFile(list);
    }

    @Override
    public void writeByName(List<StaffModel> list) {
        List<StaffModel> newList = list.stream().sorted(Comparator.comparing(StaffModel::getName))
                .collect(Collectors.toList());
        adaptee1.writeStaffFile(newList);
    }

    @Override
    public void writeByRoom(List<StaffModel> list) {
        List<StaffModel> newList = list.stream().sorted(Comparator.comparing(StaffModel::getRoom))
                .collect(Collectors.toList());
        adaptee1.writeStaffFile(newList);
    }
}
