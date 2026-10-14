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

// Their core job is simple: they allow us to represent the absence of some data

func getUsername() -> String? {
    return "Taylor"
}

if let username = getUsername() {
    print("Username is \(username)")
} else {
    print("No username")
}


// Examples for unwrappingOptionals

var favoriteMovie: String? = nil
favoriteMovie = "The Life of Brian"

if let movie = favoriteMovie {
    print("Your favorite movie is \(movie).")
} else {
    print("You don't have a favorite movie.")
}




let song: String? = "Shake it Off"
if let unwrappedSong = song {
    print("The name has \(unwrappedSong.count) letters.")
}



let currentDestination: String? = nil
if let destination = currentDestination {
    print("We're walking to \(destination).")
} else {
    print("We're just wandering.")
}


let menuItems: [String]? = ["Pizza", "Pasta"]
if let items = menuItems {
    print("There are \(items.count) items to choose from.")
}



let album = "Red"
let albums = ["Reputation", "Red", "1989"]

if let position = albums.firstIndex(of: album) {
    print("Found \(album) at position \(position).")
}




let userAge: Int? = 38
if let age = userAge {
    print("You are \(age) years old.")
}



var winner: String? = nil
winner = "Daley Thompson"
if let name = winner {
    print("And the winner is... \(name)!")
}



// More ways of unwrapping optionals
// Apart from if let statement or optional binding

// Using guard let statement

func printSqaure(of number: Int?) {
    guard let number = number else {
        print("Missing Input")
        return
    }
    
    print("Square of \(number) is \(number * number)")
}

printSqaure(of: 9)


// Important Distinction
// if let myVar = my Var {
// Runs code if myVar has a value
//}

//guard let myVar = myVar else {
// Runs code if myVar does not have a value
//}


// guard let is designed to exit the current function, loop, or condition if the check fails

func getMeaningOfLife() -> Int? {
    return 26
}

func printMeaningOfLife() {
    guard let name = getMeaningOfLife() else {
        return
    }

    print(name)
}


// Examples of unwrapping with guard let statements
func double(number: Int?) -> Int? {
    guard let number = number else {
        return nil
    }
    return number * 2
}

let input = 5
if let doubled = double(number: input) {
    print("\(input) doubled is \(doubled).")
}


func verify(age: Int?) -> Bool {
    guard let age = age else { return false }
    return true
}

if verify(age: 28) {
    print("You're old enough.")
} else {
    print("Come back in a few years.")
}


func uppercase(string: String?) -> String? {
    guard let string = string else {
        return nil
    }
    return string.uppercased()
}

if let result = uppercase(string: "Hello") {
    print(result)
}



func isLongEnough(_ string: String?) -> Bool {
    guard let string = string else { return false }
    if string.count >= 8 {
        return true
    } else {
        return false
    }
}

if isLongEnough("Mario Odyssey") {
    print("Let's play that!")
}



func username(for id: Int?) -> String? {
    guard let id = id else {
        return nil
    }
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

if let user = username(for: 1989) {
    print("Hello, \(user)!")
}




func describe(occupation: String?) {
    guard let occupation = occupation else {
        print("You don't have a job.")
        return
    }
    print("You are an \(occupation).")
}
let job = "engineer"
describe(occupation: job)



// unwrap optionals with nil coalescing - ?? - provides default value
let captains = [
    "Enterprise" : "Picard",
    "Voyager" : "Janeway",
    "Defiant" : "Sisko"
]

let new = captains["Serenity"] ?? "No Value" // ?? - This is nil coalescing operator
print(new)


let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "ABC", author: nil)
let author = book.author ?? "Anon"
print(author)


let inputStr = ""
let newNumber = Int(inputStr) ?? 0
print(newNumber)

// Nil coalescing lets us attempt to unwrap an optional, but provide a default value if the optional contains nil

// Examples of Nil coalesing operator
var bestPony: String? = "Pinkie Pie"
let selectedPony: String? = bestPony ?? nil





let lightsaberColor: String? = "green"
let color = lightsaberColor ?? "blue"




var captain: String? = "Kathryn Janeway"
let name = captain ?? "Anonymous"




let planetNumber: Int? = 426
var destination = planetNumber ?? 3




let distanceRan: Double? = 0.5
let distance: Double = distanceRan ?? 0



var userOptedIn: Bool? = nil
var optedIn = userOptedIn ?? false



var selectedYear: Int? = nil
let actualYear = selectedYear ?? 1989


// handle multiple optionals using optional chaining - a?.b?.count - this optional chaining
let names = ["John", "Aya", "Kerry", "Mandy", "Hugo"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
print(chosen)

struct NewBook {
    let title: String
    let author: String
}

var newBook: Book? = nil
let newAuthor = newBook?.author?.first?.uppercased() ?? "No Value" // optional chaining with nil coalesing
print(newAuthor)

let coolNames = ["Vincent": "van Gogh", "Pablo": "Picasso", "Claude": "Monet"]
let surnameLetter = coolNames["Vincent"]?.first?.uppercased() ?? "?"


// Examples of optional chaining
let someNames = ["Taylor", "Paul", "Adele"]
let lengthOfLast = someNames.last?.count



let songs: [String]? = [String]()
let finalSong = songs?.last?.uppercased()



func albumReleased(in year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    case 2017: return "Reputation"
    default: return nil
    }
}
let someAlbum = albumReleased(in: 2006)?.uppercased()




let shoppingList = ["eggs", "tomatoes", "grapes"]
let firstItem = shoppingList.first?.appending(" are on my shopping list")



let someCaptains: [String]? = ["Archer", "Lorca", "Sisko"]
let lengthOfBestCaptain = someCaptains?.last?.count



let opposites = ["hot": "cold", "near": "far"]
let oppositeOfLight = opposites["light"]?.uppercased()



let racers = ["Hamilton", "Verstappen", "Vettel"]
let winnerWasVE = racers.first?.hasPrefix("Ve")



// Handle function failure with optionals - using try? or try!
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 20) { // try? will not help to find which error did you get in the code
    print("User: \(user)")
}

let user = (try? getUser(id: 20)) ?? "Anon"
print(user)
