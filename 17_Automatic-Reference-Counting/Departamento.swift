//
//  Departamento
//
//  Created by Gerardo Ayala on 8/7/2020
//  Copyright © 2020 Gerardo Ayala. All rights reserved.
//
// Online compiler
// https://repl.it/languages/swift
/////////////////////////////////////////////////////////////

class Departamento
{
    let address: String
    // here tenant is a WEAK attribute !
    weak var tenant: Persona?
    //
    
    init(address: String)
    {
        self.address = address
    }//end init
    
    deinit
    {
        print("Departamento object for address : \(address) will be deallocated")
    }//end deinit
    
}//end class

