class Matrix
{
    var numberOfRows: Int
    var numberOfColumns: Int
    var grid: [Double]
    //
    init(_ rows: Int, _ columns: Int)
    {
        self.numberOfRows = rows
        self.numberOfColumns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }//end init


    subscript(row: Int, column: Int) -> Double
    {
        get
        {
            return grid[(row * numberOfColumns) + column]
        }//end get
        set(newValue)
        {
            grid[(row * numberOfColumns) + column] = newValue
        }//end set
    }//end subscript

/*
[0,0] = 5
[5, 0, 0, 0, 0, 0, 0, 0, 0]       ]

[0,1] = 5
[0, 5, 0, 0, 0, 0, 0, 0, 0]

[1,0] = 5
[0, 0, 0, 0, 5, 0, 0, 0, 0]

[2,1] = 5
[0, 0, 0, 0, 0, 0, 0, 5, 0]


*/



}//end  Matrix

