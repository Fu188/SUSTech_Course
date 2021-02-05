package original;

import java.util.List;

public interface FileOperateInterfaceV3 extends FileOperateInterfaceV2{
    void addNewStaff(List<StaffModel> list);

    void removeStaffByName(List<StaffModel> list);
}
