package Singleton.dao;

import Singleton.dao.ComputerDao;
import Singleton.dao.DaoFactory;
import Singleton.dao.SqlServerComputerDao;
import Singleton.dao.SqlServerStaffDao;
import Singleton.dao.StaffDao;

public class SqlServerDaoFactory implements DaoFactory {
    @Override
    public ComputerDao createComputerDao() {
        return new SqlServerComputerDao();
    }

    @Override
    public StaffDao createStaffDao() {
        return new SqlServerStaffDao();
    }
}
