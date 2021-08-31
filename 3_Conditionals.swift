//
//  main.swift
//  03Conditionals&Switch
//
//  Created by Gerardo Ayala
//  Copyright © 2020 Gerardo Ayala. All rights reserved.
//

var string : String
var anotherString : String
var iAmHungry : Bool
var iHaveMoney : Bool
var population: Int
var message: String
var hasPostOffice: Bool
var statusCode: Int
var errorMessage: String
var age : Int
var intVariable : Int
var maybeNilInt : Int?

//////////////////////////////////////////////



string = "abacab"
anotherString = "abacab"
if(string == anotherString)
{
    print("are the same!")
}//end if


string = "ABC"
anotherString = "ABD"
if(string < anotherString)
{
    print(string + " is smaller than " + anotherString)
}//end if


print("-----")
iAmHungry = true
//
if(iAmHungry)
{
    print("I am HUNGRY!")
}//end if
else
{
    print("happy happy...")
}//end else

iHaveMoney = true

if((iAmHungry)&&(iHaveMoney))
{
    print("Let's have some tamales!")
}//end if



// Nested IF-THEN ////////////////////
print("-----")
population = 5422

if population < 10000
{
    message = "\(population) is a small town!"
}//end if
else
    if population >= 10000 && population < 50000
    {
        message = "\(population) is a medium town!"
    }//end if
    else
    {
        message = "\(population) is pretty big!"
    }//end else
print(message)

//////////////////////////////////////////////////


print("-----")
statusCode = 404
switch statusCode
{
    case 400:
        errorMessage = "Bad request"
    case 401:
        errorMessage = "Unauthorized"
    case 403:
        errorMessage = "Forbidden"
    case 404:
        errorMessage = "Not found"
    default:
        errorMessage = "None"
}//end switch
print(errorMessage)


// fallthrough //////////////////////////////
statusCode = 404
switch statusCode
{
    case 400, 401, 403, 404:
        errorMessage = "There was something wrong with the request."
        fallthrough
    default:
        errorMessage += " Please review the request and try again."
}//end switch
print(errorMessage)


// ranges ...

statusCode = 404
errorMessage = "The request failed with the error:"
switch statusCode
{
    case 100, 101:
        errorMessage += " Informational, \(statusCode)."
    case 204:
        errorMessage += " Successful but no content, 204."
    case 300...307:
        errorMessage += " Redirection, \(statusCode)."
    case 400...417:
        errorMessage += " Client error, \(statusCode)."
    case 500...505:
        errorMessage += " Server error, \(statusCode)."
    default:
        errorMessage = "\(statusCode) is not a known error code."
}//end switch
print(errorMessage)


// if case

print("-----")
age = 21
if case 18...65 = age
{
    print("The person is economically active.")
}//end if case


if case 18...65 = age, age >= 21
{
    print("Economically active and... can drink!")
}//end if




// OPTIONAL BINDING
//////////////////////////////////////

// The IF LET conditional structure
print("-- OPTIONAL BINDING --")
string = "456"
//string = "abc"
if let maybeNilInt = Int(string)
{
    print("It was ok")
}//end if let
else
{
    print("It was NOT possible!")
}//end else




