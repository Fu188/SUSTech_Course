package AbstractFactory.dao;

import AbstractFactory.bean.Computer;

public interface ComputerDao {
    public int insertComputer(Computer computer);
    public int updateComputer(int id);
    public int deleteComputer(int id);
}
