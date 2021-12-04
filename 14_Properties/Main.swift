//
//  Properties
//
//  Created by Gerardo Ayala on 8/7/2020
//  Copyright © 2020 Gerardo Ayala. All rights reserved.
//
// Online compiler
// https://repl.it/languages/swift
/////////////////////////////////////////////////////////////

var object : MyClass
//

// BEGIN

object = MyClass(10)
print(object.value)

print("=========================")
object.attribute = 10.0
print(object.attribute)
print(object.value)
print("=========================")
object.attribute = 0.0
print(object.attribute)
print(object.value)
print("=========================")
object.attribute = 5.0
print(object.attribute)
print(object.value)
print("=========================")
object.property = "second"
print("=========================")
object.property = "third"

print("=========================")
print(MyClass.classAtribute)
MyClass.classAtribute = 1234
print(MyClass.classAtribute)


print("=========================")
// try...if we use object.lazyProperty before
// print(object.lazyProperty)
object.anotherValue = 9
print(object.lazyProperty)
print("=========================")
object.anotherValue = 9
print(object.lazyProperty)

// END
