//
//  Person
//  ProtocolsAndExtensions
//
//  Created by Gerardo Ayala on 8/7/2020
//  Copyright © 2020 Gerardo Ayala. All rights reserved.
//
// Online compiler
// https://repl.it/languages/swift
/////////////////////////////////////////////////////////////

public class Person : Equatable, Comparable
{
    var name : String
    var age : Int
    //
    
    init(_ aName : String, _ anAge : Int)
    {
        name = aName
        age = anAge
    }//end init
    

    var description: String
    {
        return name + "/" + String(age)
    }//end description
    
    
}//end class Person


/////////////////////////////////////////////////////////

extension Person
{
    public static func ==(lhs: Person, rhs: Person) -> Bool
    {
        return (lhs.age == rhs.age) && (lhs.name == rhs.name)
    }//end ==
    
    
    
    public static func <(lhs: Person, rhs: Person) -> Bool
    {
        return (lhs.age < rhs.age)
    }// end <
    
}//end extension
