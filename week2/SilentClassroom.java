
import java.util.Scanner;

public class Main
{
	public static void main( String args []){
        Scanner sc = new Scanner(System.in);
        int minChatty = 0;
        int [] alphabet = new int[26];
        int numStudents = sc.nextInt();
        String student = sc.nextLine();
        for (int i = 0; i < numStudents; i++){
            student = sc.nextLine();
            char c = student.charAt(0);
            alphabet[c - 97] += 1;
        }
        for (int i = 0; i < 26; i++){
            if (alphabet[i] % 2 == 0){
                int n = alphabet[i]/2;
                minChatty += (n * (n - 1));
            } else {
                int n = alphabet[i]/2;
                int n2 = n + 1;
                minChatty += (n * (n - 1))/2 + (n2 * (n2 - 1))/2;
            }
        }
        System.out.println(minChatty);
    }
}
