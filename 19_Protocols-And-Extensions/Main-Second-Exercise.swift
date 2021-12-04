var object : MyClass

//

// BEGIN

object = MyClass()
print(object.method())

print("=========================")
object.gettableProtocolProperty = 4
object.getAndSettableProtocolProperty = 5
print(object.method())
