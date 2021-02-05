package Singleton.dao;

import Singleton.bean.Computer;
import Singleton.dao.ComputerDao;

public class MysqlComputerDao implements ComputerDao {

    @Override
    public int insertComputer(Computer computer) {
        if(computer==null ){
            System.out.println("computer is null");
            return 0;
        }else{
            System.out.println("insert computer into Mysql database successfully");
            return 1;
        }
    }

    @Override
    public int updateComputer(int id) {
        System.out.println("update computer in Mysql database successfully");
        return 1;
    }

    @Override
    public int deleteComputer(int id) {
        System.out.println("delete computer in Mysql database successfully");
        return 1;
    }
}
