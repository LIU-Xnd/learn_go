package main

import (
	"fmt"

	"example.com/module01"
	"example.com/module02"
)

func main() {
	fmt.Println("Ready to load SubFunctions...")
	module01.SubFunc01()
	module02.SubFunc02()
}
