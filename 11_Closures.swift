
// CLOSURES
///////////////////////////////////


// CONSTANTS ///////////////////////////////

let dictionary =
    [0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
     5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"]
let telephoneNumbers = [2292029, 2482345, 5688722]
let array = ["Miley", "Ariana", "Beyonce", "Taylor", "Katy"]
let telephoneNumbersText = telephoneNumbers.map
    {
        // code of a function that defines the value of the constant
        // signature of the function
        (inputParameterFromMap) -> String
        in
        // function code
            var number : Int
            var string : String
            //
            number = inputParameterFromMap
            string = ""
            repeat
            {
                string = dictionary[number % 10]! + "-" + string
                number = number / 10
            } while(number > 0)
            return string
        //end function code
    }//end closure


// VARIABLES ///////////////////////////////

var integer : Int
var anotherArray : Array<String>
var arrayOfClients = ["ClientA", "ClientB", "ClientC", "ClientD", "ClientE"]


var processClientServiceFunction =
{
    arrayOfClients.remove(at: 0)
}//end processClientServiceFunction
//

//var arrayOfFunctions = [() -> Void]()
typealias MyFunctionType = () -> Void
var arrayOfFunctions = Array<MyFunctionType>()


func myCriteria(_ stringA: String, _ stringB: String) -> Bool
{
    return stringA > stringB
}//end myCriteria


func functionThatGetsAClosure(closure : () -> Void)
{
    closure()
}//end functionThatGetsAClosure


// ESCAPING CLOSURE
// A closure "escapes" a function
// when the closure is passed as an argument to the function
// but is called after the function returns.
func functionWithEscapingClosure(closure: @escaping () -> Void)
{
    print("running functionWithEscapingClosure")
    arrayOfFunctions.append(closure)
}//end functionWithEscapingClosure

// closure is a non escaping closure
// therefore it can not "escape"
func functionWithNonEscapingClosure(closure: () -> Void)
{
    print("running functionWithNoEscapingClosure")
    //arrayOfFunctions.append(closure)
    closure()
}//end functionWithNonEscapingClosure


func functionCalls()
{
    functionWithEscapingClosure(closure:
    {
    () -> Void
    in
        print("executing code of escaping closure")
    }//end closure code
    )
    
    functionWithNonEscapingClosure(closure:
    {
    () -> Void
    in
        print("executing code of non escaping closure")
    }//end closure code
    )
}//end functionCalls


/*

// also possible:

func functionCalls()
{
    functionWithEscapingClosure(closure:
    {
        print("executing code of escaping closure")
    }//end closure code
    )
    
    functionWithNonEscapingClosure(closure:
    {
        print("executing code of non escaping closure")
    }//end closure code
    )
}//end functionCalls


// also possible:
 
func functionCalls()
{
    functionWithEscapingClosure
    {
        print("executing code of escaping closure")
    }//end closure code
    
    functionWithNonEscapingClosure
    {
        print("executing code of non escaping closure")
    }//end closure code
}//end functionCalls

 
*/



// BEGIN //////////////////////////////////
print(telephoneNumbersText)
print("-------------------")


print(array)
print("-------------------")
anotherArray = array.sorted(by: myCriteria)
print(anotherArray)
print("-------------------")

anotherArray = array.sorted(by:
    {
    (stringA: String, stringB: String) -> Bool
    in
        // code
        return stringA < stringB
        //end code
    }//end closure
)//end anotherarray

print(anotherArray)
print("-------------------")

functionThatGetsAClosure(closure:
                        {
                          () -> Void
                          in
                            print("this is my code")
                        }//end closure
                        )

functionThatGetsAClosure(closure:
                        {
                          () -> Void
                          in
                            var i : Int
                            i = 0
                            while(i < 5)
                            {
                                print(i)
                                i = i + 1
                            }//end while
                        }//end closure
                        )





print("-------------------")

functionCalls()

print("-------------------")

print("calling a function of an array of functions")
arrayOfFunctions[0]()

print("-------------------")

print(arrayOfClients)
print(arrayOfClients.count)

print("-------------------")
print("Giving service to: \(processClientServiceFunction())!")

print(arrayOfClients)
print(arrayOfClients.count)

print("-------------------")
print("Giving service to: \(processClientServiceFunction())!")

print(arrayOfClients)
print(arrayOfClients.count)
