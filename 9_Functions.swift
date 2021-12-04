var string : String
var integer : Int
var double : Double
var (half, power) : (Double, Int)
var x : Int
var y : Int

////////////////////////////////////
// FUNCTIONS

func noResultNoParameters()
{
    print("hello!")
}//end noResultNoParameters


func oneResultNoParameters() -> String
{
    return "a value"
}//end noResultNoParameters



func oneParameter(stringParameter : String)
{
    print(stringParameter)
}//end noResultOneParameter



func oneParameterOmitArgument(_ stringParameter : String)
{
    print(stringParameter)
}//end oneParameterOmitArgument


func moreParameters(stringParameter : String, integerParameter: Int)
{
    print(stringParameter)
    print(integerParameter)
}//end moreParameters


func moreParametersOmitArguments(_ stringParameter : String, _ integerParameter: Int)
{
    print(stringParameter)
    print(integerParameter)
}//end moreParametersOmitArguments


func multipleReturn() -> (first : Int, second : Double)
{
    return (5, 6.6)
}//end multipleReturn



func nestedFunction( _ parameter : Int) -> Int
{
    var result : Int
    //
    func internalFunction(_ aValue : Int) -> Int
    {
        return aValue * 10
    }//end internalFunction
    
    result = internalFunction(parameter)
    return result
}//end nestedFunction



func optionalReturn(_ parameter : Int) -> Int?
{
    var result : Int?
    //
    result = nil
    if(parameter <= 20)
    {
       result =  parameter * parameter
    }//end if
    return result
}//end optionalReturn




// EARLY EXIT using guard-else
func earlyExitUsingGuardElse(_ aString : String)
{
    guard aString == "Bobby"
    else
    {
        print("He is not Bobby! bye bye")
        return
    }//end else
    print("OMG we better play well")
    print("and we play...")
}//end earlyExitUsingGuardElse



func defaultParameterFunction(_ value : Double,
                              todaysDiscount : Double = 15.0) -> Double
{
    return value * (todaysDiscount / 100.00)
}//end defaultParameterFunction



func variadicParameterFunction( grades : Int...) -> Double
{
    var mean : Double
    var sum : Int
    var numberOfValues : Int
    //
    numberOfValues = grades.count
    sum = 0
    for aValue in grades
    {
        sum = sum + aValue
    }//end for
    mean = Double (sum / numberOfValues)
    return mean
}//end variadicParameterFunction






func inOutParameterFunction(_ x : inout Int, _ y : inout Int)
{
    var swapBridge : Int
    //
    swapBridge = x
    x = y
    y = swapBridge
}//end inOutParameterFunction





func subString(_ aString : String, _ initial : Int, _ final : Int) -> String?
{
    var subString : Substring
    var result : String?
    var initialIndex : String.Index
    var finalIndex : String.Index
    //
    result = nil
    if( (initial >= 0) && (final < aString.count) && (initial < final) )
    {
      initialIndex = aString.index(aString.startIndex, offsetBy: initial)
      finalIndex = aString.index(aString.startIndex, offsetBy: final+1)
      let range = initialIndex..<finalIndex
      subString = aString[range]
      result = String(subString)
    }//end if
    return result
}//end subString






/////////////////////////////////////

// BEGIN
noResultNoParameters()

string = oneResultNoParameters()
print(string)

oneParameter(stringParameter : "tengo hambre!" )
oneParameterOmitArgument("y quiero tacos al pastor!")

moreParameters(stringParameter: "Postres", integerParameter : 2 )
moreParametersOmitArguments("Perros", 3)

print("--------------------")
(integer, double) = multipleReturn()
print(integer)
print(double)

print("--------------------")
integer = nestedFunction(3)
print(integer)


if let integer = optionalReturn(5)
{
   print(integer)
}//end if
else
{
    print("No se puede")
}//end else


earlyExitUsingGuardElse("Gerardo")
print("--------------------")

print(defaultParameterFunction(200.00))

print("--------------------")
double = variadicParameterFunction(grades : 1, 2, 3, 4, 5, 6, 7, 8, 9)
print(double)

double = variadicParameterFunction(grades : 1, 2, 3, 4, 5)
print(double)


print("--------")
//
x = 0
y = 9
inOutParameterFunction(&x, &y)
print(x)
print(y)



print("============================")
if let string = subString("abcdefgh", 1, 3)
{
    print(string)
}//end if let
else
{
  print("sorry")
}//end else


