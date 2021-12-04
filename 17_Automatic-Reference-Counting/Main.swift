//
// Automatic Reference Counting (ARC)
//
//  Created by Gerardo Ayala on 8/7/2020
//  Copyright © 2020 Gerardo Ayala. All rights reserved.
//
// Online compiler
// https://repl.it/languages/swift
/////////////////////////////////////////////////////////////

// all references are optional, may be nil
var personObject : Person?
var apartmentObject : Apartment?
var genteObject : Persona?
var departamentoObject : Departamento?


// BEGIN

print("creating John...")
personObject = Person(name : "John")
apartmentObject = Apartment(address: "Rue De La Mort 42")
//
personObject = nil
print("----------------")
apartmentObject = nil
print("================")




print("creating Mary...")
personObject = Person(name : "Mary")
apartmentObject = Apartment(address: "Rue De La Eternité 88")
apartmentObject?.tenant = personObject
personObject?.apartment = apartmentObject
//
personObject = nil
print("----------------")
apartmentObject = nil
print("================")




print("----------------")
print("creating Donald...")
genteObject = Persona(name : "Donald")
departamentoObject = Departamento(address: "Rue De La Terminé 666")
departamentoObject?.tenant = genteObject
genteObject?.apartment = departamentoObject
//
genteObject = nil
print("----------------")
departamentoObject = nil
print("================")

// END
