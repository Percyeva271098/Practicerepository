import java.util.Scanner;

public class ThrowDemo {
	public static void division(int x, int y) {
		if (y==0) {
			throw new ArithmeticException();
		}
		else {
			int result=x/y;
			System.out.println(result);
		}
	}

	public static void main(String[] args) {
		 int x, y, result=0;
		    Scanner sc=new Scanner(System.in);
		    System.out.println("Enter two numbers");
		    x=sc.nextInt();
		    y=sc.nextInt();
		    try {
		    division(x,y);
		    }
		    catch(ArithmeticException ex) {
		    	System.out.println("Cannot divided by Zero");
		    }

	}

}
