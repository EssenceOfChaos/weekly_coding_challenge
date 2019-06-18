class Main {
  public static void main(String[] args) {
    System.out.println(palindrome("racecar"));
  }

  public static boolean palindrome(String s){
    int i = 0;
    while (i < s.length()/2){
      if (s.charAt(i) != s.charAt(s.length() - 1 - i)){
        return false;
      }
      i++;
    }
    return true;
  }
}