import UIKit

/* 100 Days of Swift
 * Days 1 through 12
 */

// Day 1

// a variable is a place where the user
// can store program data. they are known as
// variables because the data inside these
// can vary.
var str = "I can change."
str = "I have changed."

// strings can hold letters
var my_age = "eighteen"

// integers can hold whole number values
var age = 18 // this value counts as eighteen

// large number values can use underscores
// as thousands separators
var population = 8_000_000 // this value counts as eight million

// a multi-line strings can be used to signify line breaks
var str2 = """
This is a \
multi-line \
string. \
""" // each backslash is a line break in this variable

// doubles are variables that can hold decimal values
var pi = 3.14 // doubles allow the use of fractional values

// booleans are special variables that hold a value that represents "true" or "false"
var isTrue = true
var isFalse = false

// string interpolation allows placing variables within another string variable
var score = "The score is \(my_age)." // this uses the my_age string variable from earlier

// constants function almost like variables, but they cannot be changed later in the program
let dont_change = 100 // instead of keyword, constants use keyword let

// type annotations explicitly inference a variables data type
let words:String = "A bunch of words."
let numbers:Int = 200
let fractions:Double = 200.1
let truths:Bool = true
let lies:Bool = false
