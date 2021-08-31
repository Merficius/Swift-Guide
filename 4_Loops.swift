//
//  main.swift
//  04 Loops
//
//  Created by Gerardo Ayala 
//

var integer: Int
var i : Int
//



print("__________________________")
// WHILE
i = 0
while i < 5
{
    print(i)
    i += 1
}//end while
print("Final value", terminator:": ")
print(i)




print("__________________________")
// REPEAT-WHILE
i = 0
repeat
{
    print(i)
    i += 1
}//end repeat
while i < 5
print("Final value", terminator:": ")
print(i)




print("__________________________")
// CONTINUE
i = 0
while i < 5
{
    if( i == 3)
    {
        print("three!")
        i += 1
        continue
    }//end if
    print(i)
    i += 1
}//end while
print("Final value", terminator:": ")
print(i)




print("__________________________")
// BREAK
i = 0
while i < 5
{
    if( i == 3)
    {
        print("three! and that is all")
        break
    }//end if
    print(i)
    i += 1
}//end while
print("Final value", terminator:": ")
print(i)
print("__________________________")



print("__________________________")
// FOR-IN
for i in 1...5
{
    print(i)
}//end for





print("__________________________")
// FOR-IN-WHERE
for i in 1...30 where i % 3 == 0
{
    print(i)
}//end for


