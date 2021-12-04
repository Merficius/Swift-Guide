//
//  Student
//
//  Created by Gerardo Ayala on 8/7/2020
//  Copyright © 2020 Gerardo Ayala. All rights reserved.
//
// Online compiler
// https://repl.it/languages/swift
/////////////////////////////////////////////////////////////


// Student inherits from Person
public class Student : Person
{
    // attribute
    private var id : Int
    //
    
    // override the constructor
    override init()
    {
        id = -1
        // call the constructor of the super class
        super.init()
    }//end init
    
    

    
    
    
    func setId(_ anId : Int)
    {
        id = anId
    }//end setId
    
    
    func getId() -> Int
    {
        return id
    }//end getId
    
    
    override func toString() -> String
    {
        return "student(" + String(id) + ", " + getName() + ", " + String(getAge()) + ")."
    }//end toString
    
}//end class
