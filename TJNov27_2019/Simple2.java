import java.util.Scanner;
class Simple2 {
    static Scanner input = new Scanner(System.in);
    public static void main(String args[])
    {
        int x = input.nextInt();
        x = x % 3;
        System.out.println(x + 2);
    }
}
