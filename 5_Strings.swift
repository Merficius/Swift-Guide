//
//  Strings
//
//  Created by Gerardo Ayala on 6/7/2020
//  Copyright © 2020 Gerardo Ayala. All rights reserved.
//
//
// Documentation
// https://developer.apple.com/documentation/swift/string
//////////////////////////////////////////////////////////
// Online compiler
// https://repl.it/languages/swift
/////////////////////////////////////////////////////////////


// constants
let pi : Double = 3.14159
let emptyString = ""
let tab = "\t"
let newLine = "\n"

// variables
var string : String
var anotherString : String
var substring : Substring
var integer : Int
var double : Double
var character : Character
// optionals
var anotherInt : Int?
var anotherDouble : Double?
// indexes
var index : String.Index
var start : String.Index
var end : String.Index


// BEGIN

// check if it is an empty string
if emptyString.isEmpty
{
    print("empty string is empty")
}//end if



// String construction
string = String()
//
if string.isEmpty
{
    print("A new string is empty")
}//end if


// constructing a String from an Int
integer = 123
string = String(integer)
print(string)


// constructing a String from a Double
double = 45.67
string = String(double)
print(string)


// constructing an Int from a String
anotherString = "8901"
anotherInt = Int(anotherString)
print(anotherInt!)


// constructing a Double from a String
anotherString = "23.45"
anotherDouble = Double(anotherString)
print(anotherDouble!)


print("================================")
// concatenation
string = "hello"
string += " to all"
print(string)
string = string + " our friends!"
print(string)


print("================================")
// string interpolation
integer = 3
string = "\(integer) times pi is \(Double(integer) * pi)"
print(string)



// string length
print(string.count)



print("================================")
string = "0123456789"
print(string)

// using a for in order to scan the string
for character in string
{
    print(character)
}//end for

print("================================")



// first character
index = string.startIndex
character = string[index]
print(character)


// out of bounds!
/*
index = string.endIndex
character = string[index]
print(character)
*/


// last character
index = string.index(before: string.endIndex)
character = string[index]
print(character)


// a given character
index = string.index(string.startIndex, offsetBy: 5)
character = string[index]
print(character)




//////////////////////

// substrings
// note that substring is of type Substring
print("---------------------")
start = string.startIndex
end = string.index(string.startIndex, offsetBy: 5)
substring = string[..<end]
print(substring)


string = "123456789"
print("---------------------")
start = string.index(string.startIndex, offsetBy: 2)
end = string.index(start, offsetBy: 4)
substring = string[start..<end]
print(substring)



// insert characters
print("---------------------")
print(string)
string.insert(",", at: string.index(string.startIndex, offsetBy: 5))
string.insert("]", at: string.endIndex)
string.insert("[", at: string.startIndex)
print(string)


// remove characters
print("---------------------")
print(string)
string.remove(at: string.startIndex)
string.remove(at: string.index(before: string.endIndex))
string.remove(at: string.index(string.startIndex, offsetBy: 5))
print(string)

print("======================")

// equality
if(string == "0123456789")
{
    print("Equal!")
}//end if



// comparison
string = "ABCDE"
if(string < "BCDE")
{
    print("Less")
}//end if




// prefix
print("---------------------")
string = "MyClass.java"
substring = "MyClass.class"
if (string.hasPrefix("MyClass") && substring.hasPrefix("MyClass"))
{
    print("Both files are about MyClass")
}//end if


 
// suffix
if string.hasSuffix("java")
{
    print("It is a java file!")
}//end if



print("-------------------")
// special characters
string = "Línea "
string = string + tab
string = string + "uno."
string = string + newLine + "y linea dos."
print(string)



// UNICODE
print("-------------------")
string = "\u{2656}"
print(string)


// EXTENDED DELIMITER  #
print("-------------------")
string = "name("
string = string + #""Marcus Carlsen""#
string = string + ")."
print(string)

// END
