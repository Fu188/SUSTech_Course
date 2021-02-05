package Singleton.dao;

import Singleton.bean.Staff;
import Singleton.dao.StaffDao;

public class SqlServerStaffDao implements StaffDao {
    @Override
    public int insertStaff(Staff staff) {
        if(staff==null){
            System.out.println("staff is null");
            return 0;
        }else{
            System.out.println("insert staff into SqlServer database successfully");
            return 1;
        }
    }

    @Override
    public int deleteStaff(int id) {
        System.out.println("delete Staff in SqlServer successfully!");
        return 1;
    }

    @Override
    public int updateStaff(int id) {
        System.out.println("update Staff in SqlServer successfully!");
        return 1;
    }
}
