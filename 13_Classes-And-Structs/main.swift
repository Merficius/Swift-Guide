//
//  ClassesAndStructs
//
//  Created by Gerardo Ayala on 8/7/2020
//  Copyright © 2020 Gerardo Ayala. All rights reserved.
//
// Online compiler
// https://repl.it/languages/swift
/////////////////////////////////////////////////////////////

var aStruct : MyStruct




var person : Person
var student : Student

// BEGIN

aStruct = MyStruct(integer: 8, double : 12.34)
print(aStruct)
aStruct.printDescription()
aStruct.incrementInteger(2)
aStruct.printDescription()

print("=======================================")










person = Person()
person.setName("John")
person.setAge(55)
print(person)
print(person.toString())
//
person = Person(aName: "Noriko", anAge: 38)
print(person)
print(person.toString())

print("=======================================")
student = Student()
student.setName("Mary")
student.setAge(19)
student.setId(123456)
print(student)
print(student.toString())

print("=======================================")
print(Person.numberOfPersons)
// END


