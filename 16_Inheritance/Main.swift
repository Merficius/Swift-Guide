//
//  InheritanceAndInitialization
//
//  Created by Gerardo Ayala on 8/7/2020
//  Copyright © 2020 Gerardo Ayala. All rights reserved.
//
// Online compiler
// https://repl.it/languages/swift
/////////////////////////////////////////////////////////////

var object : Student
var otherObject : Student
// optional, may be nil
var anotherObject : Teacher?
//

object = Student("John", 19)
print(object.toString())
print(object.getMonths())
object.setId(2222)
object.setGrade(7.8)
print(object.toString())

print("=================================")
otherObject = Student()
print(otherObject.toString())

print("=================================")
otherObject = Student("Mavis", 20)
print(otherObject.toString())

print("=================================")
anotherObject = Teacher(2924, "Joe", 40)
// print the object or "the object is nil" if it is nil
print(anotherObject?.toString() ?? "there is no object!")
print("=================================")
// the pointer to the Tearcher object for Joe
// will be assigned to other object
anotherObject = Teacher(2925, "Old Sam", 200)
print(anotherObject?.toString() ?? "yes, the object is nil")
