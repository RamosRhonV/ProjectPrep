import UIKit
import Darwin

/* 100 Days of Swift
 * Days 1 and 2
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
string. 
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


// Day 2

// arrays are a collection that store a single type of value
let alb1 = "Breetles"
let alb2 = "Mruno Bars"
let alb3 = "Nork"
let albums = [alb1, alb2, alb3] // this is an array that holds only strings

// sets are similar to arrays except that they do not hold duplicate values
let colors = Set(["blue", "red", "yellow", "green", "gray"])
// attempting to create a set with duplicate values causes the created set to ignore those values
let nums = Set([1, 1, 2, 3, 3, 4, 4, 4, 5]) // this creates a set that holds one instance of 1, 2, 3, 4, and 5

// tuples are similar to arrays except they are a fixe dsize and the data types cannot be different
let tuplings = (tup1: "tup1", tup2: "tup2") // this is a tuple with string values
// tuples can be accessed by numerical position or by position name
let tuper1 = tuplings.tup1 // this holds a string "tup1"
let tuper2 = tuplings.1    // this holds a stirng "tup2"

// dictionaries are similar to arrays but data is stored with any data type
// dictionaries use keys as identifiers to the value they store in each element
let dictionary1 = ["sonic":"tails", "mario":"luigi"] // this dictionary uses string keys to identify a string element

// dictionary elements can be given a default value to avoid giving an element a nil
let dictionary2 = ["sonic":"tails", "mario":"luigi"]
dictionary2["kirby", default: "no partner"]

// an empty collection can be created by explicitly writing its type
let empty_array = [Int]() // this creates an empty array that would hold integers
// creating an empty set uses slightly different syntax
let empty_set = Set<Int>() // this creates an empty set that would hold integers
// creating an empty dictionary is slightly similar
let empty_dictionary = Dictionary<Int, Int>() // this creates an empty dictionary with integer keys and integer elements

// enumarations are a way to group related values for easier use
enum enum1 {
    case val1 // enumerations would be use to explicitly define a case to use
    case val2
}

// enumarations can also be given associated values for each case
enum enum2 {
    case val1(val2: Int) // associated values describe each case in greater detail
    case val3(val4: String)
}

// enumarations uses rawValues to give enums some meaning
enum enum3:Int {
    case mercury = 1 // this gives the mercury case the integer value of 1
    case venus       // swift automatically gives venus the value 2
    case earth       // automatically given 3
    case mars        // automatically given 4
}
