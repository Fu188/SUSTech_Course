package AbstractFactory.dao;

import AbstractFactory.bean.Staff;

public class MysqlStaffDao implements StaffDao {
    @Override
    public int insertStaff(Staff staff) {
        if(staff==null){
            System.out.println("staff is null");
            return 0;
        }else{
            System.out.println("insert staff into Mysql database successfully");
            return 1;
        }

    }

    @Override
    public int deleteStaff(int id) {
        System.out.println("delete Staff in Mysql database successfully");
        return 1;
    }

    @Override
    public int updateStaff(int id) {
        System.out.println("update Staff in Mysql database successfully");
        return 1;
    }
}
