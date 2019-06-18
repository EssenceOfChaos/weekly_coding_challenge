package main

import (
	"fmt"
)

// checkPalindrome - compares the first and last code-points for equality
func checkPalindrome(inputString string) bool {
	for index, val := range inputString {
		if byte(val) != inputString[len(inputString)-index-1] {
			return false
		}
	}
	return true
}

func main() {
	fmt.Println(checkPalindrome("racecar"))   //true
	fmt.Println(checkPalindrome("superman"))  //false
	fmt.Println(checkPalindrome("abcdedcba")) //true
	fmt.Println(checkPalindrome("none"))      //false
}
