//
//  MyClass
//  ProtocolsAndExtensions
//
//  Created by Gerardo Ayala on 8/7/2020
//  Copyright © 2020 Gerardo Ayala. All rights reserved.
//
// Online compiler
// https://repl.it/languages/swift
/////////////////////////////////////////////////////////////

// MyCLass implements MyProtocol
class MyClass : MyProtocol
{
    var gettableProtocolProperty: Int
    var getAndSettableProtocolProperty : Int
    //let getAndSettableProtocolProperty: Int = 1

    //
    
    init()
    {
        gettableProtocolProperty = 0
        getAndSettableProtocolProperty = 0
    }//end init
    
    
    func method() -> Int
    {
       return gettableProtocolProperty * getAndSettableProtocolProperty
    }//end method
    
}//end class
