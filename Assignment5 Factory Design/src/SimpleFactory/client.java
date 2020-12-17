package SimpleFactory;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.InputMismatchException;
import java.util.List;
import java.util.Scanner;

public class client {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		int op = -1;

		List<ITStaff> staffList = new ArrayList<>();

		System.out.println("Please input an operation number:"
				+ "\n1: add an IT manager"
				+ "\n2: add an Developer"
				+ "\n3: add an Tester"
				+ "\n4: print all staff by salary order"
				+ "\n5: print all staff by working order"
				+ "\n0: Stop\n");
		do {
			try {
				op = input.nextInt();
				ITStaffFactory itStaffFactory = new ITStaffFactory();
				switch (op) {
				case 1:
					staffList.add(itStaffFactory.createITStaff("ITManager"));
					break;
				case 2:
					staffList.add(itStaffFactory.createITStaff("Developer"));
					break;
				case 3:
					staffList.add(itStaffFactory.createITStaff("Tester"));
					break;
				case 4:
					System.out.println("All information:");
					staffList.stream().sorted(Comparator.comparing(ITStaff::getSalary)).forEach(System.out::println);
					break;
				case 5:
					System.out.println("All name:");
					staffList.stream().sorted(Comparator.comparing(ITStaff::working)).forEach(System.out::println);
					break;
				}
			} catch (InputMismatchException e) {
				System.out.println(e.toString());
				input.nextLine();
			}

		} while (op != 0);
		input.close();
	}

}
