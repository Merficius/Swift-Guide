//
//  Person
//
//  Created by Gerardo Ayala on 8/7/2020
//  Copyright © 2020 Gerardo Ayala. All rights reserved.
//
// Online compiler
// https://repl.it/languages/swift
/////////////////////////////////////////////////////////////

class Person
{
    var name : String
    var age : Int
    //
    
    //constructor
    init(_ aName : String, _ anAge : Int)
    {
        name = aName
        age = anAge
    }//end constructor
    
    
    final func getMonths() -> Int
    {
        return age * 12
    }// end getMonths
    
    
    func toString() -> String
    {
        return "Name: " + name + " / Age: " + String(age)
    }//end toString
    
}//end class
