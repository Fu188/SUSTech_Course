package original;

import java.util.List;
import java.util.Scanner;

public class ManageStaff implements ManageStaffInterface {
    private Scanner input = new Scanner(System.in);

    private String inputNoEmptyLine(String tip) {
        System.out.println("Input " + tip + ":");
        String s;
        do {
            s = input.nextLine();
        } while (s.trim().length() == 0);

        return s;
    }

    @Override
    public void addingStaff(List<StaffModel> list) {
        System.out.println("Input a new Staff Info:");
        StaffModel s = new StaffModel(
                inputNoEmptyLine("name"),
                inputNoEmptyLine("title"),
                inputNoEmptyLine("email"),
                inputNoEmptyLine("room"),
                inputNoEmptyLine("link"));
        list.add(s);
        System.out.println("adding successfully");
    }

    @Override
    public void removeStaff(List<StaffModel> list) {
        System.out.println("Input staff name to remove:");
        String name = input.next();
        for (StaffModel e : list) {
            if (e.getName().equals(name)) {
                list.remove(e);
                break;
            }
        }
        System.out.println("success to remove " + name);
    }
}
