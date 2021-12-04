// collections
// an array is a collection
let inmutableArray = [10,20,30,40,50]
let anotherInmutableArray = Array(repeating: 1.0, count: 3)
let punctuationSymbols : Array<Character> = [",", ".", ";"]
//
var stringArray : Array<String>
var anotherStringArray : [String]
var integerArray : [Int]
var doubleArray : Array<Double>
var anotherDoubleArray : Array<Double>
var subStringArray : Array<Substring>
//
var string : String
var integer : Int



print(inmutableArray[0])
print(anotherInmutableArray)

stringArray = ["zero", "one", "two", "three", "four", "five"]
print(stringArray.count)

if(stringArray.contains("four"))
{
    print("has four")
}//end if

integerArray = []

if(integerArray.isEmpty)
{
    print("is empty")
}//end if

integerArray.append(8)
integerArray.append(7)
integerArray.append(6)
integerArray.append(5)
integerArray.append(4)
integerArray.append(3)
integerArray.append(2)
integerArray.append(1)
integerArray.append(0)
print(integerArray)

print("=========================")
// remove
integerArray.remove(at: 2)
print(integerArray)

integerArray.removeLast()
print(integerArray)

integerArray.removeFirst()
print(integerArray)

print("=========================")
// insert

integerArray[2] = 222
print(integerArray)

integerArray.insert(333, at: 2)
print(integerArray)

//print(integerArray[100])

print("=========================")
print(integerArray.first!)
print(integerArray.last!)


print("=========================")
// scan the array
for string in stringArray
{
    print(string)
}//end for

// range
print(stringArray[2...4])

// insert
stringArray[0...1] = ["cero","uno"]
print(stringArray)

print("=========================")
print(integerArray)
for integer in integerArray[3...]
{
    print(integer)
}//end for

print("------------------------")
for integer in integerArray[...3]
{
    print(integer)
}//end for



print("---------------------")
for (index, value) in integerArray.enumerated()
{
     print(index, terminator: " ) ")
     print(value)
}//end for


// joining arrays
print("=========================")
anotherStringArray = []
anotherStringArray.append("six")
anotherStringArray.append("seven")
anotherStringArray.append("eight")
anotherStringArray.append("nine")
print(anotherStringArray)
//
print("=========================")
stringArray = stringArray + anotherStringArray
print(stringArray)


// equality
print("=========================")
doubleArray = [1.1, 2.2, 3.3, 4.4, 5.5]
anotherDoubleArray = [1.1, 2.2, 3.3, 4.4, 5.5]

if(doubleArray == anotherDoubleArray)
{
    print("arrays are the same")
}//end if

//swap
print("=========================")
print(anotherDoubleArray)
anotherDoubleArray.swapAt(1,3)
print(anotherDoubleArray)

// shuffle
print(".........................")
anotherDoubleArray.shuffle()
print(anotherDoubleArray)

// reverse
print("=========================")
anotherDoubleArray.reverse()
print(anotherDoubleArray)

// sort
print("=========================")
anotherDoubleArray.sort()
print(anotherDoubleArray)


print("--------- tokenizer ----------------")
string = "When I find myself in times of trouble, Mother Mary comes to me." +
         "Speaking words of wisdom, let it be."

subStringArray = string.split{!$0.isLetter}
print(subStringArray)

// much more clear
subStringArray = string.split
                        {
                            character in
                            !character.isLetter
                        }//end closure
print(subStringArray)

print("-------------------------")
stringArray.forEach{print($0)}


print("-------------------------")
stringArray.forEach
    {
        word in
        print(word)
    }//end closure

print(string)
string.removeAll(where:
                    {
                        firstCharacter in
                        punctuationSymbols.contains(firstCharacter)
                    }//end closure
                )//end removeAll
print(string)


// map
print("----------------------")
print(inmutableArray)
print(integerArray)
integerArray = inmutableArray.map(
                                    {
                                        element in
                                        element + 8
                                    }//end closure
                                )//end map
print(integerArray)
