package AbstractFactory.dao;

import AbstractFactory.bean.Computer;

public interface DaoFactory {
    public ComputerDao createComputerDao();
    public StaffDao createStaffDao();
}
