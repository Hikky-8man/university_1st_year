import java.util.Scanner;
public class Calculator {
    public static int addition(int x, int y) {
        return x + y;
    }

    public static int subtraction(int x, int y) {
        return x - y;
    }

    public static int division(int x, int y) {
        return x / y;
    }

     public static int multiplication(int x, int y) {
        return x * y;
    }

    public static void main(String[] args) {
        int time = 0;
        Calculator Calculation = new Calculator();
        Scanner userinput = new Scanner(System.in);
        while (time != 1) {
        System.out.println("1)Addition 2)Subtraction 3)Division) 4)Multiplication");

        int choice = userinput.nextInt();

        if (choice == 1) {
            System.out.println("type in the first value:");
            int x = userinput.nextInt();
            System.out.println("type in the second value:");
            int y = userinput.nextInt();
            System.out.println(Calculation.addition(x, y));
        }

        else if (choice == 2) {
            System.out.println("type in the first value:");
            int x = userinput.nextInt();
            System.out.println("type in the second value:");
            int y = userinput.nextInt();
            System.out.println(Calculation.subtraction(x,y));
        }

        else if (choice == 3) {
            System.out.println("type in the first value:");
            int x = userinput.nextInt();
            System.out.println("type in the second value:");
            int y = userinput.nextInt();
            System.out.println(Calculation.division(x, y));
        }

        else {
            System.out.println("type in the first value:");
            int x = userinput.nextInt();
            System.out.println("type in the second value:");
            int y = userinput.nextInt();
            System.out.println(Calculation.multiplication(x,y));
        }
        }
    }
}
