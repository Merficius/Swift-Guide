//
//  main.swift
//  17Protocols&Extensions
//
//  Created by Gerardo Ayala on 1/29/17.
//  Copyright © 2017 Gerardo Ayala. All rights reserved.
//



var personA : Person
var personB : Person

personA = Person("john", 20)
personB = Person("mary", 21)

if(personA == personB)
{
    print("are the same")
}//end if
else
{
    print("are different")
}//end else








if(personA < personB)
{
    print(personA.description)
    print("smaller than ")
    print(personB.description)
}//end if
else
{
    print(personB.description)
    print("smaller than ")
    print(personA.description)
}//end else




personB = Person("john", 20)

if(personA == personB)
{
    print("now are the same")
}//end if



