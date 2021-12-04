enum Directions
{
    case north
    case south
    case east
    case west
}//end Directions


enum Positions : String
{
    case up, down, left, right
}//end positions


enum Actions : Int
{
    case add = 1
    case modify = 2
    case remove = 3
    case save = 4
    case load = 5
}//end Actions


enum Id
{
    case codeId(Int, Int, Int)
    case stringId(String)
}//end Id



////////////////////////////
// VARIABLES
var direction : Directions
var position : Positions
var action : Actions
var id : Id
var string : String
var integer : Int


////////////////////////////
// BEGIN
direction = Directions.north
print(direction)

// also possible
direction = .south
print(direction)

position = Positions.left
print(position)
// rawValue
string = Positions.left.rawValue
print(string)

action = Actions.save
print(action)
integer = action.rawValue
print(integer)

id = Id.codeId(1,2,3)
print(id)

/*
id = Id.stringId("tengoHambre")
print(id)
*/

switch id
{
case .codeId(let number1, let number2, let number3):
    print("ID using code: \(number1), \(number2), \(number3).")
case .stringId(let code):
    print("ID using string: \(code).")
}//end switch


