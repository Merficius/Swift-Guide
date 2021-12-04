//
//  Teacher
//
//  Created by Gerardo Ayala on 8/7/2020
//  Copyright © 2020 Gerardo Ayala. All rights reserved.
//
// Online compiler
// https://repl.it/languages/swift
/////////////////////////////////////////////////////////////

class Teacher : Person
{
    var employeeNumber : Int
    //
    
    // failable initializer
    // the result may be nil
    init?(_ aName : String, _ anAge : Int, _ aNumber : Int)
    {
        if(anAge < 0 || anAge > 110)
        {
            return nil
        }//end if
        else
        {
            employeeNumber = aNumber
            super.init(aName, anAge)
        }//end else
    }//end init
    
    
    // block of instructions to be performed when the object is deallocated
    deinit
    {
        print("Teacher object for " + name + " will be deallocated.")
    }//end deinit
    
    
}//end class








