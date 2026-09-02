package main

import (
    "math/rand"
    "time"
)

// seedRandomGenerator creates and returns a new *rand.Rand seeded with the current time.
// This ensures different random sequences on each run.
func seedRandomGenerator() *rand.Rand {
    source := rand.NewSource(time.Now().UnixNano())
    return rand.New(source)
}

func main() {
    r := seedRandomGenerator()
    // Example: generate a random number between 0 and 99
    randomNumber := r.Intn(100)
    println(randomNumber)
}