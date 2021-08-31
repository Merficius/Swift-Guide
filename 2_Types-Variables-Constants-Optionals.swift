//
//  main.swift
//  02-typesVariablesConstants-21
//
//  Created by Gerardo Ayala on 13/08/21.
//  Copyright © 2021 Gerardo Ayala. All rights reserved.
//
// Online compiler
// https://repl.it/languages/swift
////////////////////////////////////////////////////////////////////

// IMPORTS /////////////////////////////////////////////////////
import Foundation

// Type Alias
typealias MyInt = UInt8
typealias MyDuple = (name: String, salary: Double)
typealias MyTuple = (String, Int, Bool)

// CONSTANTS /////////////////////////////////////////////////////
let pi = 3.14159
let defaultStringValue = "Default string value"
//
let maxValue = UInt.max
let maxValue8 = UInt8.max
let maxValue16 = UInt16.max
let maxValue32 = UInt32.max
let maxValue64 = UInt64.max

// Type Inference
let isInteger = 10
let isDouble = 1.1

// Tuples
let dupleConstant = ("December", 31)

// Variables
/////////////////////////////////////////////////////

// common types
var stringVariable : String
var intVariable : Int
var doubleVariable : Double
var floatVariable : Float
var boolVariable : Bool
var format : String

// duplets - initialized
var (month, days) = dupleConstant
var dupleVar = (8, 9)
var student = (name: "Jhon", grade: 9.4)

// Using my defined types
var shortNumber : MyInt
var teacher : MyTuple
var employee : MyDuple

// OPTIONAL - ?  variables which value may be nil (null)
var optionalVariable : String?
var maybeNilString : String?

// binary, octal and hexadecimal
var binaryInt : Int
var octalInt : Int
var hexadecimalInt : Int
var eightBitsInt : UInt8
//


// BEGIN
///////////////////////////////////////////////////

stringVariable = "Hello!"
intVariable = 88
doubleVariable = ( pi / 3 ) - 0.047196
floatVariable = ( Float(pi) / 3 ) - 0.047196
boolVariable = !true



// using other language symbols
stringVariable = "日本語でもいい"
//
binaryInt = 0b1000000
octalInt = 0o100
hexadecimalInt = 0x40
eightBitsInt = 64
//eightBitsInt = 256

print("----------------------------")
print("Int : \(intVariable)")
print("Double : \(doubleVariable)")
print("Float : \(floatVariable)")
print("String : \(stringVariable)")
print("Bool :  \(boolVariable)")
print(binaryInt)
print(octalInt)
print(hexadecimalInt)

print("The value of pi is: \(pi)--- ok.");

// using the terminator argument
print("The value of pi is", terminator : " = ")
print(pi);



// Integers and Integer Bounds
print("MAX UInt", terminator : " = ")
print(maxValue)
//
print("MAX UInt8", terminator : " = ")
print(maxValue8)
//
print("MAX UInt16", terminator : " = ")
print(maxValue16)
//
print("MAX UInt32", terminator : " = ")
print(maxValue32)
//
print("MAX UInt64", terminator : " = ")
print(maxValue64)


print("-------------------")

// Casting... create a new object
//doubleVariable = 3.33 * isInteger
doubleVariable = 3.33 * Double(isInteger)
print(doubleVariable)
//

// Int part of a Double
intVariable = Int(pi)
print("The integer part of pi is", terminator: ": ")
print(intVariable)
//
// using MyInt type
shortNumber = 255
print(shortNumber)



print("-------------------")
//
// douple constants
print(month)
print(days)
print(dupleConstant)
print(dupleVar)


//
print(student.name)
print(student.grade)
student = (name: "Bobby Fischer", grade: 7.4)
print(student.name)
print(student.grade)



// using MyDuple type
employee = ("José Raúl Capablanca", 40000.00)
print(employee)
employee.name = "Gary Kasparov"
employee.salary = 45678.999
//

// Formatted printing
format = String(format:"%5.2f", employee.salary)
print("The name is \(employee.name) and her/his salary is $ \(format) pesos")


// using MyTuple type
teacher = ("Antoli Kárpov", 4, true)
print(teacher)


print("-------- optionals -----------")
optionalVariable = "Hasta la vista"
print(optionalVariable)
// implicitly unwrapped optional
print(optionalVariable!)

optionalVariable = nil
//print(optionalVariable!)
print(optionalVariable)


optionalVariable = "Nos vemos"
//optionalVariable = nil
//stringVariable = optionalVariable
stringVariable = optionalVariable!
print(stringVariable)




print("== nil-Coalescing Operator (fusion)==")
// maybeNilValue ?? defaultValue
maybeNilString = nil
stringVariable = maybeNilString ?? defaultStringValue
print(stringVariable)
//
maybeNilString = "Now it has a value!"
stringVariable = maybeNilString ?? defaultStringValue
print(stringVariable)



print("-- Ternary Conditional Operator --")
//Ternary Conditional Operator
// condition ? valueIfTrue : valueifFalse
boolVariable = true
// boolVariable = true
intVariable = (boolVariable ? 16 : 64)
print(intVariable)



// END
