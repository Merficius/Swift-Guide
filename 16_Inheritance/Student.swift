//
//  InheritanceAndInitialization
//
//  Created by Gerardo Ayala on 8/7/2020
//  Copyright © 2020 Gerardo Ayala. All rights reserved.
//
// Online compiler
// https://repl.it/languages/swift
/////////////////////////////////////////////////////////////

class Student : Person
{
    var id : Int
    var grade : Double
    //
    
    override init(_ aName : String, _ anAge : Int)
    {
        id = 0
        grade = 0.0
        super.init(aName, anAge)
    }//end init
    
    
    //  constructor for stereotypes
    convenience init()
    {
        self.init("stereotype",20)
        id = 1234
        grade = 8.5
    }//end init
    
    
    
    
    ///////////////////// GETs
    func getId() -> Int
    {
        return id
    }//end getId
    
    func getGrade() -> Double
    {
        return grade
    }//end getGrade
    
    
    ////////////////////// SETs
    
    func setId(_ anId : Int)
    {
        if(anId >= 1111 && anId <= 9999)
        {
            id = anId
        }//end if
    }//end setId
    
    
    func setGrade(_ aGrade : Double)
    {
        if(aGrade >= 0 && aGrade <= 10)
        {
            grade = aGrade
        }//end if
    }//end setGrade
    
    
    ///////////////////////////////////////////
    
    override func toString() -> String
    {
        var string : String
        //
        string = "student(" + name + ", " + String(id) +
                ", " + String(age) + ", " + String(grade) + ")."
        return string
    }//end toString

}//end class

