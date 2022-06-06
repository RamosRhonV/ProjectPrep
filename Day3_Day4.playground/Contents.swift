import UIKit
import Darwin

/* 100 Days of Swift
 * Days 3 and 4
 */

// Day 3

// range operators ... can be used to create a range between one value and a final value
let range1 = 1...15
// range operators can also use a ..< to exclude the final value
let range2 = 1..<15


// Day 4

// for-loops are loops that will repeat its code within a finite range
let count1 = 1...10 // this is a range of values from 1 through 10
// this for-loop repeats 10 times
for x in count1 { // this prints ten values, 1 through 10
    print(x)
}

// while-loops are loops that are expected to loop infinitely until an exit condition is met
let count2 = 15
var counter = 1
while(counter <= 15) { // this loop increments counter by 1 until it reaches the value of 15
    counter += 1
}
counter = 1
// the above loop would have executed infinitely if counter did not increment or if
// the exit condition cannot be reached

// repeat-loops are similar to while-loops except they always execute their block at least once
repeat {
    counter += 1
} while(counter <= 15)
// the above loop will execute 14 times, only checking its exit condition after the first execution

// the program must exit loops in some way or else loops will execute infinitely
// the keyword break can exit a loop prematurely if the loop is required to meet a certain condition
let counter2 = 1
while(counter2 <= 15) {
    if(counter2 == 3) {
        break // this keyword exits the loop when the counter2 value equals to 3
    }
}

// to exit a nested loop, naming it is needed
outer:for y in 1...15 {
    for _ in 1...15 {
        if y == 10 {
            break outer // this exits the entire loop because it names the outer loop
        }
    }
}

// the keyword continue allows the loop to skip an iteration if a certain condition is required
for h in 1...20 {
    if h % 2 == 1 {
        continue // this loop will skip iterations where h equals an odd number value
    }
}

// infinite loops may be required
// a while loop with the boolean true can be used to create one
// this loop must be terminated with a break statement
var counter3 = 1
while true {
    counter3 += 1
    if counter3 == 10 {
        break // this loop would have executed infinitely if not for this break statement
    }
}

