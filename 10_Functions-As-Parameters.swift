//
//  Functions as Parameters
//
//  Created by Gerardo Ayala on 7/7/2020
//  Copyright © 2020 Gerardo Ayala. All rights reserved.
//
// Online compiler
// https://repl.it/languages/swift
/////////////////////////////////////////////////////////////

// we import the Foundation library
// in order to use some mathematical functions from Swift
import Foundation


// A variable which value is a function
var myFuntion : (Int, Int) -> Int
var anotherFunction : (Double) -> Double
var integer : Int
var double : Double
var incrementByThree : () -> Int
var incrementByFour : () -> Int

//


// a function that receives a fuinction and then invoke it
func invocation(function : (Int, Int) -> Int)
{
    var result : Int
    //
    result = function(5, 7)
    print(result)
}//end invocation




// A function that returns a function
func getFunction(functionName : String) -> (Double) -> Double
{
    var function : (Double) -> Double 
    //
    func squareRoot(x: Double) -> Double
    {
        return sqrt(x)
    }//end sum
    
    func square(x : Double) -> Double
    {
        return pow(x,2)
    }//end square
    
    func cubed(x : Double) -> Double
    {
        return pow(x,3)
    }//end square
    
    //
    // default
    function = square
    
    if(functionName == "squareRoot")
    {
        function = squareRoot
    }//end if
    if(functionName == "cubed")
    {
        function = cubed
    }//end if

    return function
}//end getFunction



func mySum(_ a : Int, _ b : Int) -> Int
{
    return a + b
}//end mySum


func myMultiplication(_ a : Int, _ b : Int) -> Int
{
    return a * b
}//end myMultiplication




// capturing values
// a function that returns an int function with no arguments
func getFunction(_ amount: Int) -> () -> Int
{
    var capturingValue = 0
    //
    func myCode() -> Int
    {
        capturingValue = capturingValue + amount
        return capturingValue
    }//end myCode
    return myCode
}//end getFunction




// BEGIN

myFuntion = myMultiplication
invocation(function : myFuntion)
print("----")
myFuntion = mySum
invocation(function : myFuntion)
    
print("===========================")
anotherFunction = getFunction(functionName: "square")
double = anotherFunction(9.0)
print(double)

print("----")
anotherFunction = getFunction(functionName: "squareRoot")
double = anotherFunction(9.0)
print(double)

print("----")
anotherFunction = getFunction(functionName: "cubed")
double = anotherFunction(4.0)
print(double)


print("----")
integer = 0
incrementByThree = getFunction(3)
incrementByFour = getFunction(4)
//
print(integer)
integer = incrementByThree()
print(integer)
integer = incrementByThree()
print(integer)
print("===========================")
integer = incrementByFour()
print(integer)
integer = incrementByFour()
print(integer)
integer = incrementByThree()
print(integer)
print("===========================")


// END
