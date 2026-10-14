import Cocoa

var greeting = "Hello, playground"

// Optionals - ?, ! - can have value or be nil
let opposite: [String : String] = ["Mario":"Wario", "Luigi":"Waluigi"]

if let marioOpposite = opposite["Mario"] {
    print(marioOpposite)
}

var username: String? = nil

if let username = username {
    print("We got a user")
} else {
    print("No user")
}

var num1 = 1_000_000
var num2 = 2
var num3: Int? = nil


var str1 = "Hello"
var str2 = ""
var str3: String? = nil

func squareNumber(number: Int) -> Int {
    return number * number
}

var number: Int? = nil
if let number = number { // shadowing
    print(squareNumber(number: number))
}
