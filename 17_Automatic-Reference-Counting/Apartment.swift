//
//  Apartment
//
//  Created by Gerardo Ayala on 8/7/2020
//  Copyright © 2020 Gerardo Ayala. All rights reserved.
//
// Online compiler
// https://repl.it/languages/swift
/////////////////////////////////////////////////////////////

class Apartment
{
    let address: String
    // tenant may be nil
    var tenant: Person?
    //
    
    init(address: String)
    {
        self.address = address
    }//end init
    
    deinit
    {
        print("Apartment object for address : \(address) will be deallocated")
    }//end deinit
    
}//end class





