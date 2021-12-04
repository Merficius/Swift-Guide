
// Using the Error Protocol
// we can throw these exceptions (errors)
enum ErrorType : Error
{
    case divisionByZero
    case invalidNumber(invalidValue: Double)
    case negativeNumber(invalidValue: Double)
}//end enum


// A function that throws exceptions
func myOperation(_ aNumber : Double ) throws -> Double
{
    var result : Double
    //
    result = 0.0


    if(aNumber == 0.0)
    {
        throw ErrorType.divisionByZero
    }//end if

    

    guard (aNumber >= 0)
    else
    {
         throw ErrorType.negativeNumber(invalidValue: aNumber)
    }//end else


    if(aNumber == 666)
    {
        throw ErrorType.invalidNumber(invalidValue: aNumber)
    }//end if
    else
    {
        // DEFER BLOCK
        print("before defer block")
        //
        defer
        {
            print("Inside defer block...the result is ", terminator : ": ")
            print(result)
        }//end defer
        //
        result = 1.0 / aNumber
        print("out & after defer block...result already calculated")
    }//end else
    print("out of the else block, where we have the defer block")

    return result
}//end myOperation


var double  : Double

// BEGIN

/*
double = try myOperation(2)
print(double)
*/

double = 0.0

// do-try-catch
do
{
    try double = myOperation(666)
}//end do
catch ErrorType.negativeNumber
{
    print("OMG! negative number, but we continue..")
}//end catch
catch ErrorType.divisionByZero
{
    print("WTF! division by zero, but we continue..")
}//end catch
catch ErrorType.invalidNumber
{
    print("OOPS! invalid number, but we continue..")
}//end catch

print("and we continue...")




//END

