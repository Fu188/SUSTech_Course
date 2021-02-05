package Singleton.dao;

import Singleton.bean.Computer;
import Singleton.dao.ComputerDao;
import Singleton.dao.StaffDao;

public interface DaoFactory {
    public ComputerDao createComputerDao();
    public StaffDao createStaffDao();
}
