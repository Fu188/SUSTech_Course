package Singleton.dao;

import Singleton.dao.ComputerDao;
import Singleton.dao.DaoFactory;
import Singleton.dao.MysqlComputerDao;
import Singleton.dao.MysqlStaffDao;
import Singleton.dao.StaffDao;

public class MysqlDaoFactory implements DaoFactory {
    @Override
    public ComputerDao createComputerDao() {
        return new MysqlComputerDao();
    }

    @Override
    public StaffDao createStaffDao() {
        return new MysqlStaffDao();
    }
}
