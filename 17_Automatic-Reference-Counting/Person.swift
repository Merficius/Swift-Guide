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
    let name: String
    // apartment may be nil
    var apartment: Apartment?
    //
    
    init(name: String)
    {
        self.name = name
    }//end init

    
    deinit
    {
        print("Person object for name : \(name) will be deallocated")
    }//end deinit

}//end class






