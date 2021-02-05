package original;

import adapter.Adapter;
import original.FileOperate;
import original.FileOperateInterfaceV1;

import java.util.ArrayList;
import java.util.InputMismatchException;
import java.util.List;
import java.util.Scanner;

public class Client {

    public static void main(String[] args) {
        List<StaffModel> list = new ArrayList<>();
        FileOperateInterfaceV1 adaptee = new FileOperate();
        FileOperateInterfaceV2 fileOperator = new Adapter(adaptee);
        Scanner input = new Scanner(System.in);
        System.out.println("Please select operation: 1.readFile 2.listFile 3.writeByName 4.writeByRoom :");
        int op = 0;
        do {
            try {
                op = input.nextInt();
                switch (op) {
                    case 1:
                        list = fileOperator.readAllStaff();
                        break;
                    case 2:
                        fileOperator.listAllStaff(list);
                        break;
                    case 3:
                        fileOperator.writeByName(list);
                        break;
                    case 4:
                        fileOperator.writeByRoom(list);
                        break;
                }
            } catch (InputMismatchException e) {
                System.out.println("Exception:" + e);
                input.nextLine();
            }
        } while (op != 0);

        input.close();
    }
}
