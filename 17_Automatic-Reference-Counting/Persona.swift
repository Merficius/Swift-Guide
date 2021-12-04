//
//  Persona
//
//  Created by Gerardo Ayala on 8/7/2020
//  Copyright © 2020 Gerardo Ayala. All rights reserved.
//
// Online compiler
// https://repl.it/languages/swift
/////////////////////////////////////////////////////////////

class Persona
{
    let name: String
    // apartment may be nil
    var apartment: Departamento?
    //
    
    init(name: String)
    {
        self.name = name
    }//end init
    
    
    deinit
    {
        print("Persona object for name : \(name) will be deallocated")
    }//end deinit
    
}//end class

