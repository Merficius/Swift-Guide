//
//  main.swift
//  08Dictionaries
//
//  Created by Gerardo Ayala on 1/13/17.
//  Copyright © 2017 Gerardo Ayala. All rights reserved.
//


var dictionary : [Int: String]
var anotherDicctionary : [String : Double]
var value : String
var  key : Int
var array : [String]
//



dictionary = [Int: String]()
dictionary[11] = "oneOne"
dictionary[22] = "twoTwo"
dictionary[33] = "threeThree"
dictionary[44] = "fourFour"
dictionary[55] = "fiveFive"

print(dictionary)
print(dictionary.count)
print(dictionary.isEmpty)


print(dictionary[55])

// update value

dictionary.updateValue("sanSan", forKey: 33)
print(dictionary)


// remove value
if let value = dictionary.removeValue(forKey: 77)
{
    print(value)
}//end if
else
{
    print("The  dictionary does not contain a value for 77 to be removed.")
}//end else
print(dictionary)


for (key, value) in dictionary
{
    print("\(key): \(value)")
}//end for


for key in dictionary.keys
{
    print(key)
}//end for



for value in dictionary.values
{
    print(value)
}//end for



// create an Array
array = Array(dictionary.values)
print(array)



anotherDicctionary = [String : Double]()

anotherDicctionary["temperatura"] = 24.3
anotherDicctionary["altura"] = 2105.5
anotherDicctionary["humedad"] = 0.55

print(anotherDicctionary["altura"]!)
