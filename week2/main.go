package main

import (
	"fmt"

	"strings"
)

func main() {

	names := []string{"Alex", "Arty", "Andrew", "Brad", "Bill"}
	fmt.Println(names)

	fmt.Println(strings.HasPrefix(strings.ToLower("Alex"), "a"))
}

// same letter -> num pairs
// 2 -> 0
// 3 -> 1
// 4 -> 2
// 5 -> 4
// 6 -> 6
// 7 ->
