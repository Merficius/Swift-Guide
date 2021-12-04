//
//  Person
//
//  Created by Gerardo Ayala on 8/7/2020
//  Copyright © 2020 Gerardo Ayala. All rights reserved.
//
// Online compiler
// https://repl.it/languages/swift
/////////////////////////////////////////////////////////////


public class Person
{
    // attribute of the class (static)
    public static var numberOfPersons : Int = 0
    
    // attributes of the objects
    private var name : String
    private var age : Int
    //
    
    
    // constructor
    init()
    {
        name = ""
        age = -1
        Person.numberOfPersons = Person.numberOfPersons + 1
    }//end init
    
    // constructor
    init(aName : String, anAge : Int)
    {
        name = aName
        age = anAge
        Person.numberOfPersons = Person.numberOfPersons + 1
    }//end init
    

    
    
    // we cannot override a final method
    final func setName(_ aName : String)
    {
        name = aName
    }//end setName
    

    final func setAge(_ anAge : Int)
    {
        age = anAge
    }//end setAge
    
    
    final func getName() -> String
    {
        return name
    }//end getName

    
    final func getAge() -> Int
    {
        return age
    }//end getAge
    
    
    func toString() -> String
    {
        return "person(" + name + ", " + String(age) + ")."
    }//end toString
}//end class







