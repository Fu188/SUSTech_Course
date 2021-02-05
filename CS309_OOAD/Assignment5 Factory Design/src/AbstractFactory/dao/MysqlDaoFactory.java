package AbstractFactory.dao;

public class MysqlDaoFactory implements DaoFactory{
    @Override
    public ComputerDao createComputerDao() {
        return new MysqlComputerDao();
    }

    @Override
    public StaffDao createStaffDao() {
        return new MysqlStaffDao();
    }
}
