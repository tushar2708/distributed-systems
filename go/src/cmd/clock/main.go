package main

import (
	"fmt"

	"distributed_systems/golang/src/clock"
)

func main() {
	clk := clock.Clock{}
	fmt.Printf("clock: %+v", clk)
}
