package main

import (
	"fmt"

	"strings"
)

func main() {

	// names := []string{"Alex", "Arty", "Andrew", "Brad", "Bill"}
	// fmt.Println(names)
	letters := "opnfhsbr"
	runes := []rune(letters)
	firstLetter := runes[0]

	fmt.Println(strings.HasPrefix(strings.ToLower("Alex"), "a")) // true
	fmt.Println(letters[0]) // 111
	fmt.Println(string(firstLetter)) // o
}

// same letter -> num pairs
// 2 -> 0
// 3 -> 1
// 4 -> 2
// 5 -> 4
// 6 ->
// 7 ->
