import Foundation

var thousandString = Int()
var hundredString = Int()
var tensString = Int()
var singleString = Int()
var defaultString = "Give me a number to expand"

func expandTheNumber(_ number: Int) -> [Int] {
    if number > 1000 {
        print("\(thousandString), \(hundredString), \(tensString), \(singleString)")
    } else if number < 1000 {
        print("\(hundredString), \(tensString), \(singleString)")
    } else if number < 100 {
        print("\(tensString), \(singleString)")
    } else if number < 10 {
        print("\(singleString)")
    } else if number <= 0 {
        print("0")
    } else {
        print(defaultString)
}
    return[]
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]

