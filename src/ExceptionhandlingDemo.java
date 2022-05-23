import java.util.Scanner;

public class ExceptionhandlingDemo {

	public static void main(String[] args) {
		        int x, y, result=0;
		    Scanner sc=new Scanner(System.in);
		    System.out.println("Enter two numbers");
		    x=sc.nextInt();
		    y=sc.nextInt();
		    try {
		    result=x/y;
		    }
		    catch (ArithmeticException e) {
		        System.out.println("Divided by zero is undefined");
		    }
		    finally {
		    System.out.println("Result is "+result);
		    }
		 

	}

}
