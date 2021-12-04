struct MyStruct
{
    // attributes
    var integer : Int
    var double : Double
    //

    func printDescription()
    {
        print("( \(integer),  \(double) ).")
    }//end printDescription

    // modify the value of a Struct field
    mutating func incrementInteger(_ value: Int)
    {
        integer = integer + value
    }//end incrementInteger

}//end struct

