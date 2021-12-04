//
//  MyProtocol
//  ProtocolsAndExtensions
//
//  Created by Gerardo Ayala on 8/7/2020
//  Copyright © 2020 Gerardo Ayala. All rights reserved.
//
// Online compiler
// https://repl.it/languages/swift
/////////////////////////////////////////////////////////////

protocol MyProtocol
{
    //var protocolProperty : Int
    var gettableProtocolProperty : Int { get }
    //var settableProtocolProperty : Int { set }
    var getAndSettableProtocolProperty : Int { get set}
    //
    func method() -> Int
}//end protocol
