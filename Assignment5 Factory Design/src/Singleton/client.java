package Singleton;

import Singleton.bean.Computer;
import Singleton.bean.Staff;
import Singleton.dao.ComputerDao;
import Singleton.dao.DaoFactory;
import Singleton.dao.DaoFactoryImpl;
import Singleton.dao.StaffDao;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.InputMismatchException;
import java.util.Properties;
import java.util.Scanner;

public class client {
    public static void main(String [] args){

        Properties prop = new Properties();
        try{
            InputStream in = new BufferedInputStream(new FileInputStream("src/Singleton/resource.properties"));
            prop.load(in);

            Class clz = Class.forName(prop.getProperty("classname"));
            DaoFactory daoFactory =  DaoFactoryImpl.getInstance(clz);
            test(daoFactory.createStaffDao(),daoFactory.createComputerDao());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void test(StaffDao staffDao, ComputerDao computerDao){
        Scanner input=new Scanner(System.in);
        int op=-1;
        do{
            try{
                op=input.nextInt();
                switch (op){
                    case 1:
                        staffDao.insertStaff(new Staff());
                        break;
                    case 2:
                        staffDao.updateStaff(1);
                        break;
                    case 3:
                        staffDao.deleteStaff(1);
                        break;
                    case 4:
                        computerDao.insertComputer(new Computer(1));
                        break;
                    case 5:
                        computerDao.updateComputer(1);
                        break;
                    case 6:
                        computerDao.deleteComputer(1);
                        break;

                }
            }catch(InputMismatchException e){
                System.out.println("Exception "+e);
            }
        }while(op!=0);
    }
}
