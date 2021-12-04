//
//  Sets
//
//  Created by Gerardo Ayala on 7/7/2020
//  Copyright © 2020 Gerardo Ayala. All rights reserved.
//
// Online compiler
// https://repl.it/languages/swift
/////////////////////////////////////////////////////////////


var characterSet : Set<Character>
var stringSet : Set<String>
var anotherStringSet : Set<String>
var resultSet : Set<String>
var character : Character
var string : String


// BEGIN

print("=========================")
// initialization
characterSet = []
print(characterSet.count)

characterSet = ["X","Y","Z"]
print(characterSet.count)

// copnstruction
characterSet = Set<Character>()

// insert
characterSet.insert("A")
characterSet.insert("B")
characterSet.insert("C")
characterSet.insert("D")
characterSet.insert("E")
print("check the order of the set elements!")
print(characterSet)
print(characterSet.count)


print("=========================")

// membership
if(characterSet.contains("E"))
{
    print("E is member of the set")
}//end if


//  removal
characterSet.remove("A")
print(characterSet)
print(characterSet.count)



// remove all
characterSet.removeAll()
print(characterSet)
if(characterSet.isEmpty)
{
    print("Empty!")
}//end if


print("=========================")
stringSet = Set<String>()
stringSet.insert("Ariana")
stringSet.insert("Miley")
stringSet.insert("Beyoncé")
stringSet.insert("Katy")
stringSet.insert("Taylor")

// for in
for string in stringSet
{
    print(string)
}//end for


anotherStringSet = Set<String>()
anotherStringSet.insert("Miki")
anotherStringSet.insert("Yuming")
anotherStringSet.insert("Miley")
anotherStringSet.insert("Akina")
anotherStringSet.insert("Ariana")


// set union
resultSet = stringSet.union(anotherStringSet)
print(resultSet)
 
// set intersection
resultSet = stringSet.intersection(anotherStringSet)
print(resultSet)

// set symmetric Difference
resultSet = stringSet.symmetricDifference(anotherStringSet)
print(resultSet)

// set subtraction
resultSet = stringSet.subtracting(anotherStringSet)
print(resultSet)

//equality
if(stringSet != anotherStringSet)
{
    print("Sets are different")
}//end if


print("=========================")
// subset
stringSet = stringSet.union(anotherStringSet)
if(resultSet.isSubset(of: stringSet))
{
    print("Set")
    print(resultSet)
    print("is subset of")
    print(stringSet)
}//end if
//



print("=========================")
// disjoint
if(resultSet.isDisjoint(with: anotherStringSet))
{
    print("set")
    print(resultSet)
    print("is disjoint with")
    print(anotherStringSet)
}//end if

 
 
// END
