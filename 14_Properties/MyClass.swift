//
//  MyClass
//
//  Created by Gerardo Ayala on 8/7/2020
//  Copyright © 2020 Gerardo Ayala. All rights reserved.
//
// Online compiler
// https://repl.it/languages/swift
/////////////////////////////////////////////////////////////

public class MyClass
{
    
    enum Adjective
    {
        case bad
        case ugly
        case good
    }//end Adjective
    
    
    // Access Levels
    static var classAtribute = 0
    static var adjectiveValue : Adjective = Adjective.good
    //
    private var privateEntity : Int
    // fileprivate access restricts the use of an entity
    // within the same defined source file.
    fileprivate var fileprivateEntity : Int
    // internal enables entities to be used within any source file
    // from their defining application,
    // but not in any source file outside of that application.
    internal var defaultEntity : Int
    //
    public var publicEntity : Int
    public var value : Int
    public var anotherValue : Int
    //

    
    // get and set
    public var attribute : Double
    {
        get
        {
            return Double(value) / 2.00
        }//end get
        set(newValueForAttribute)
        {
            self.value = Int(newValueForAttribute) * 5
        }//end set
    }//end attribute
    
    
    
    // willSet & didSet
    var property : String
        {
        willSet(newValue)
        {
            print("The value of the property WILL change to " + newValue)
        }//end willSet
        didSet(oldValue)
        {
            print("The value of the property DID change from " + oldValue + " to " + property)
        }//end didSet
    }//end property
    
    
    
    
    // A lazy stored property is a property whose initial value
    // is not calculated until the first time it is used.
    lazy var lazyProperty : Adjective =
    {
        var lazyPropertyValue : Adjective
        //
        if(self.anotherValue >= 8)
        {
           lazyPropertyValue = Adjective.good
        }//end if
        else
        {
            if(self.anotherValue <= 5)
            {
                lazyPropertyValue = Adjective.bad
            }//end if
            else
            {
                lazyPropertyValue = Adjective.ugly
            }//end else
        }//end else
        return lazyPropertyValue
    }()//end lazyProperty
    

    
    
    // constructor
    init(_ aValue : Int)
    {
        value = aValue
        property = "first"
        privateEntity = 0
        fileprivateEntity = 0
        defaultEntity = 0
        publicEntity = 0
        anotherValue = 0
    }//end init
    
}//end class
