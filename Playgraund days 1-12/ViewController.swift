//
//  ViewController.swift
//  Playgraund days 1-12
//
//  Created by resedat on 9.02.2022.
//

import UIKit

// resedat's work
// simple variable declarations, multiline variables, int-string for var
 var str = "resedat"
 print(str)
 
 var age = 8_000_000
 print(age)
 
 var str1 = """
 this goes \
 over multiple \
 lines
 """
 print(str1)
 
 var pi = 3.14
 print(pi)

 var awesome = false
 print(awesome)

 var score = 70
 var str = "your score : \(score)"
 print(str)
 
 //-----------------------------------------------------------------------------------------------------------------------------------

 let taylor = "swift" //constant values are defined with let
 print(taylor)

 //-----------------------------------------------------------------------------------------------------------------------------------

 let sedat = "sedat barlin"
 let mehmet = "mehmet kanat"
 let ibo = "ibra"
 let mise = "mise dolak"
 let beatles = [sedat,mehmet,ibo,mise,mise] //printing multiple strings
 print(beatles)
 print(beatles[2]) //print the second variable

 //-----------------------------------------------------------------------------------------------------------------------------------

 let colors = Set(["red","green","blue"])
 let colors2 = Set(["red","green","blue","blue","red"])
 print(colors) //print erratically
 print(colors2) //the same items are ignored if a new member is added
 //-----------------------------------------------------------------------------------------------------------------------------------
 let name = (first: "Taylor" , last: "Swift")
 print(name.0) //print first name

//-----------------------------------------------------------------------------------------------------------------------------------

 let array = [
 "Sedat": 1.75,
 "Taylor": 1.95,
 1.98: "apple",
 "dogru": true
 ] as [AnyHashable : Any]
 print(array[1.98]) //print apple
 print(array["dogru"]) //print true
 print(array["John", default: "Unknown"]) //null

//-----------------------------------------------------------------------------------------------------------------------------------

 var teams = [String: String]()
 teams["Sedat"] = "Red"
 print(teams["Sedat"]) //name corresponding to Sedat

 //-----------------------------------------------------------------------------------------------------------------------------------

 var results = [Int]()
 results = [50]
 print(results)

//-----------------------------------------------------------------------------------------------------------------------------------

 let result = "failure"
 let result2 = "failed"
 let result3 = "fail"
 enum Result {
 case success
 case failure
 }
 let result4 = Result.failure
 print(result4) //this stop you from accidentally using different string each time

 //-----------------------------------------------------------------------------------------------------------------------------------

 enum Activity {
 case bored
 case running(destination: String)
 case talking(topic: String)
 case singing(volume: Int)
 }
 let talking = Activity.talking(topic: "football") //now we can be more precise, we can say that someone is talking about football
 print(talking)

 //-----------------------------------------------------------------------------------------------------------------------------------

 enum Planet: Int {
 case mercury = 1
 case venus
 case earth
 case mars
 }
 let earth = Planet(rawValue: 2) //Now Swift will assign 1 to mercury and count upwards from there, meaning that earth is now the third planet

 //-----------------------------------------------------------------------------------------------------------------------------------

 let score = 12
 let score1 = 6
 let total = score - score1 //simple operators
 print(total)
 let total1 = score % score1 //modding
 print(total1)

 //-----------------------------------------------------------------------------------------------------------------------------------

 let yuklenme = "fakers gonna "
 let action = yuklenme + "fake" //print strings side by side
 print(action)

 //-----------------------------------------------------------------------------------------------------------------------------------

 let firsthalf = ["Memo", "Mise"]
 let secondhalf = ["ibo", "Baki"]
 let beatles2 = firsthalf + secondhalf //print strings in array
 print(beatles2)

 //-----------------------------------------------------------------------------------------------------------------------------------

 var score3 = 95
 score3 -= 10 //subtract and assign numbers
 print(score3)

 //-----------------------------------------------------------------------------------------------------------------------------------

 var deyim = "e me candi ce bu ew ji"
 deyim += " nebu" // collect strings
 print(deyim)

 //-----------------------------------------------------------------------------------------------------------------------------------

 let card1 = 15
 let card2 = 11
 if card1 + card2 == 20 { //using condition
 print("the answer is twenty")
 }
 else if card1 + card2 == 25 {
 print("the answer is twenty five")
 }
 else {
 print("the answer is neither")
 }
 if card1 > 14 && card2 < 21 { //providing two conditions
 print("conditions met")
 }
 print(card1 == card2 ? "cards are the same" : "cards are not the same")

 //-----------------------------------------------------------------------------------------------------------------------------------

 let weather = "rain"
 switch weather {
 case "rain": print("yagmurlu")
 fallthrough //execution continues to the next state
 case "snow":
 print("karli")
 case "sunny":
 print("gunesli")
 default:
 print("this is your day")
 }

 //-----------------------------------------------------------------------------------------------------------------------------------

 let skor4 = 9
 switch skor4 { //control with switch
 case 0..<50: print("elendin")
 case 50..<85: print("yapabilirsin")
 case 85..<100: print("çok iyisin")
 default: print("işite boşe")
 }

 //-----------------------------------------------------------------------------------------------------------------------------------

 let count = 1...10
 for sayi in count {
 print("number is \(sayi)") //print numbers from 1 to 10
 }

 //-----------------------------------------------------------------------------------------------------------------------------------

 let albums = ["red", "1989", "reputation"]
 for album in albums {
 print("\(album) is on apple music") //prints these three albums one after the other
 }

 //-----------------------------------------------------------------------------------------------------------------------------------

 for _ in 1...5 {
 print("play") //print play 5 times
 }

 //-----------------------------------------------------------------------------------------------------------------------------------

 var number = 1
 while number <= 7 { //print 1 to 7
 print(number)
 number += 1
 }

 //-----------------------------------------------------------------------------------------------------------------------------------

 var number = 1
 repeat { //the code inside the loop runs at least once
 number += 1
 } while number <= 20
 print("ready or not, here i come")
while false {
    print("this is false")
}
 repeat {
 print("this is false")
 } while false

 //-----------------------------------------------------------------------------------------------------------------------------------

 var countdown = 10
 while countdown >= 0 {
 print(countdown)
 if countdown == 4 {
 print("I am bored, lets go now")
 break //end the loop whenever you want with break
 }
 countdown -= 1
 }
 print("blast off")

 //-----------------------------------------------------------------------------------------------------------------------------------

 outherLoop: for i in 1...10 { //exit multiple loops at once
 for j in 1...10 {
 let product = i * j
 print("\(i) * \(j) is = \(product)")
 if product == 50 {
 print("döngüden çıktı")
 break outherLoop
 }
 }
 }

 //-----------------------------------------------------------------------------------------------------------------------------------

 for i in 1...10 {
 if i % 2 == 1 { //print even numbers
 continue
 }
 print(i)
 }

 //-----------------------------------------------------------------------------------------------------------------------------------

 var counter = 0
 while true {
 print(" ")
 counter += 1
 if counter == 5 { //there must be a condition for it not to be an infinite loop
 break
 }
 }

 //-----------------------------------------------------------------------------------------------------------------------------------

 func square (number: Int) { //simple function use
 print(number * number)
 }
 square(number: 8)

 //-----------------------------------------------------------------------------------------------------------------------------------

 func square1 (number1: Int) -> Int {
 return number1 * number1 //returning values
 }
 let deger = square1(number1: 9)
 print(deger)

 //-----------------------------------------------------------------------------------------------------------------------------------

 func sayHello(to name: String) {
 print("Hello \(name)")
 }
 sayHello(to: "Sedat") //print a value in

 //-----------------------------------------------------------------------------------------------------------------------------------

 func greet(_ person: String){ //omitting parameter labels
 print("Hello, \(person)!")
 }
 greet("Taylor")

 //-----------------------------------------------------------------------------------------------------------------------------------

 func greet(_ person: String, nicely: Bool = true) {
 if nicely == true {
 print("Hello \(person)")
 }
 else {
 print("Oh no, it's \(person) again...")
 }
 }
 greet("Ricky")
 greet("Ricky Martin", nicely: false). //default parameters

 //-----------------------------------------------------------------------------------------------------------------------------------
 func square(numbers: Int...) { //variadic functions
 for number in numbers {
 print("\(number) squared is \(number * number)")
 }
 }
 square(numbers: 1,2,3,4,5) //5 squared is 25

 //-----------------------------------------------------------------------------------------------------------------------------------

 enum PasswordError: Error {
 case wrongpassword
 }
 func checkPassword(_ password: String) throws -> Bool {
 if password == "password1" {
 throw PasswordError.wrongpassword //error throwing
 }
 return true
 }
 do { //to not let it accidentally run the error
 try checkPassword("password")
 print("That password is good")
 } catch {
 print("you can't use that passsword")
 }

 //-----------------------------------------------------------------------------------------------------------------------------------

 func doubleInPlace(number: inout Int) { //to directly int a number instead of returning it
 number *= 2
 }
 var myNum = 10
 doubleInPlace(number: &myNum)
 print(myNum)

 //-----------------------------------------------------------------------------------------------------------------------------------

 let driving = { (place: String) in //main body of closure
 print("I'm going to \(place) in my car")
 }
 driving("London")

 //-----------------------------------------------------------------------------------------------------------------------------------

 let drivingWithReturn = { (place: String) -> String in
 return "I'm going to \(place) in my car" //value-returning closure
 }
 let messagetwo = drivingWithReturn("Rio")
 print(messagetwo)

 //-----------------------------------------------------------------------------------------------------------------------------------

 let drivingone = {
 print("I'm driving in my car")
 }
 func travel(action: () -> Void) { //does not accept returning parameters
 print("I'm getting ready to go.")
 action()
 print("I arrived")
 }
 travel(action: drivingone)

 //-----------------------------------------------------------------------------------------------------------------------------------

 func travel(action: () -> Void) {
 print("I'm getting ready to go!!!")
 action() //travel contens called
 print("I arrived !!!")
 }
 travel {
 print("I'm driving in my car !!!")
 }

 //-----------------------------------------------------------------------------------------------------------------------------------

 func travel2(action: (String) -> Void) {
 print("I'm getting ready to go ...")
 action("Denwer") //value place in closure
 print("I arrived ...")
 }
 travel2 { (place: String) in
 print("I'm going to \(place) in my bus")
 }

 //-----------------------------------------------------------------------------------------------------------------------------------

 func travel(action: (String) -> String) {
 print("Şimdi gidiyorum")
 let description = action("Helsinki")
 print(description)
 print("Özgürüm")
 }
 travel {
 return "Ben \($0)'ye arabamla gidiyorum" // printing values with shorthand numbers
 }

 //-----------------------------------------------------------------------------------------------------------------------------------

 func travel(action: (String, Int) -> String) { //closures with multiple parameters
 print("I'm getting ready to go.")
 let description = action("Budapeşte", 60)
 print(description)
 print("I arrived")
 }
 travel {
 "I'm going to \($0) at \($1) miles per hour" //we'll be getting both 0 and 1
 }

 //-----------------------------------------------------------------------------------------------------------------------------------

 func travel() -> (String) -> Void {
 return { //returning closures
 print("I'm going to \($0)")
 }
 }
 let resultt = travel()
 resultt("Hong Kong")
 let resultt2 = travel()("Miami")

 //-----------------------------------------------------------------------------------------------------------------------------------

 func travell4() -> (String) -> Void {
 var counter = 1
 return {
 print("\(counter). I'm going toooo \($0)")
 counter += 1 //increment the numbers by one and print
 }
 }
 let resulttt = travell4()
 resulttt("Bogota")
 resulttt("Bogotaaa")
 resulttt("Riioooo")

 //-----------------------------------------------------------------------------------------------------------------------------------

 struct Sport { //simple struct creation
 var name: String
 }
 var tennis = Sport(name: "Tennis")
 print(tennis.name)
 tennis.name = "Lawn tennis"
 print(tennis.name)

 //-----------------------------------------------------------------------------------------------------------------------------------

 struct Sport1 { //struct returning different values
 var name1: String
 var isOlympicSport: Bool
 var olympicStatus: String {
 if isOlympicSport {
 return "\(name1) is an olympic sport"
 }
 else {
 return "\(name1) is not an olympic sport"
 }
 }
 }
 let chessBoxing = Sport1(name1: "Chessboxing", isOlympicSport: false)
 print(chessBoxing.olympicStatus)

 //-----------------------------------------------------------------------------------------------------------------------------------

 struct Progress {
 var task: String
 var amount: Int {
 didSet { //this will run some code every time amount changes
 print("\(task) is now \(amount)% complete")
 }
 }
 }
 var progress = Progress(task: "Loading data", amount: 10)
 progress.amount = 30
 progress.amount = 80
 progress.amount = 10

//-----------------------------------------------------------------------------------------------------------------------------------

 struct City {
 var population: Int
 func collectTaxes() -> Int { //functions inside structs are called methods
 return population * 1000
 }
 }
 let london = City(population: 9_000_000)
 london.collectTaxes()
 print(london.collectTaxes())

//-----------------------------------------------------------------------------------------------------------------------------------

 struct Person {
 var namee: String
 mutating func makeAnonymous() { //change property inside method
 namee = "Anonymous"
 }
 }
 var person = Person(namee: "Ed")
 person.makeAnonymous()
 print(person.makeAnonymous())

 //-----------------------------------------------------------------------------------------------------------------------------------

 let string = "I am happy"
 print(string.count) //number of character in a string
print(string.hasPrefix("I")) //write strings starting with this letter
 print(string.uppercased()) //capitalize all letters in the string
 print(string.sorted()) //write letters of the strings as an array

//-----------------------------------------------------------------------------------------------------------------------------------

 var toys = ["Woody"]
 print(toys.count) //number of items in the array
 toys.append("Buzz")
 print(toys) //add new item to array
 toys.firstIndex(of: "Buzz")
 print(toys.firstIndex(of: "Buzz")) //find item in array
 print(toys.sorted()) //sort array elements alphabetically
 toys.remove(at: 0) //remove an item
 print(toys)

 //-----------------------------------------------------------------------------------------------------------------------------------

 struct User {
 var username: String
 init() { //change the default
 username = "Anonymous"
 print("Creating a new user")
 }
 }
 var user = User()
 user.username = "resedat"

//-----------------------------------------------------------------------------------------------------------------------------------

 struct Person1 {
 var namme: String
 init(namme: String) {
 print("\(namme) was born")
 self.namme = namme //replace the contents of two variables with the same name
 }
 }

//-----------------------------------------------------------------------------------------------------------------------------------

 struct FamilyTree {
 init() {
 print("creating family tree")
 }
 }
 struct Persontwo {
 var name6: String
 lazy var familyTree = FamilyTree() //swift will only create the FamilyTree struct when it's first accessed
 init(name6: String) {
 self.name6 = name6
 }
 }
 var ed = Persontwo(name6: "Ed")
 ed.familyTree
 ed.familyTree

 //-----------------------------------------------------------------------------------------------------------------------------------

 struct Student {
 static var classSize = 0 //show how many students are in the class
 var nametwo: String
 init(nametwo: String) {
 self.nametwo = nametwo
 Student.classSize += 1 //number increases by one for newly enrolled students
 }
 }
 let edd = Student(nametwo: "Ed") //we can add as many students as we want
 let taylorr = Student(nametwo: "Taylor")
 let sedatt = Student(nametwo: "Sedat")
 print(Student.classSize)

//-----------------------------------------------------------------------------------------------------------------------------------

 struct Person {
 private var id: String //now only methods inside Person can read the id property
 init(id: String) {
 self.id = id
 }
 func identify() -> String {
 return "My social security number is \(id)"
 }
 }
 let ed = Person(id: "123456")

//-----------------------------------------------------------------------------------------------------------------------------------

 class Dog { //if class has properties, you should always create own initializer
 var name: String
 var breed: String
 init(name: String, breed: String) {
 self.name = name
 self.breed = breed
 }
 }
 let poppy = Dog(name: "Poppy", breed: "Poodle")
 class Poodle: Dog { //it will inherit the same properties and initializer as Dog by default
 init(name: String) {
 super.init(name: name, breed: "Poodle")
 }
 }

//-----------------------------------------------------------------------------------------------------------------------------------

 class Dog {
 func makeNoise() {
 print("Woof!")
 }
 }
 class Poodle: Dog {
 override func makeNoise() { //this prevents you from accidentally overriding a method
 print("Yip!")
 }
 }
 let poppy = Poodle()
 poppy.makeNoise()

 //-----------------------------------------------------------------------------------------------------------------------------------

 class Singer {
 var name = "Taylor Swift"
 }
 var singer = Singer()
 print(singer.name) //if we create an instance of that class and prints its name, we'll get "Taylor Swift"
 var singerCopy = singer
 singerCopy.name = "justin bieber"
 print(singer.name) //because of the way classes work, both singer and singerCopy point to the same object in memory
 var singerCopy2 = singerCopy
 singerCopy2.name = "Sedat Barlin"
 print(singer.name)

 //-----------------------------------------------------------------------------------------------------------------------------------

 class Person { //deinitializers
 var name = "John Doe"
 init() {
 print("\(name) is alive!")
 }
 func printGreeting() {
 print("Hello, I'm \(name)")
 }
 deinit { //this will be called when the person instance is being destroyed
 print("\(name) is no more")
 }
 }
 for _ in 1...3 { //a new person will be created each time the loop returns
 let person = Person()
 person.printGreeting()
 }

//-----------------------------------------------------------------------------------------------------------------------------------

 class Singer { //if you have a constant class with a varible property, that property can be changed
 var name = "Taylor" //if you want to stop that from happening you need to make the property constant
 }
 let taylor = Singer()
 taylor.name = "Ed Sheeran" //
 print(taylor.name)

//-----------------------------------------------------------------------------------------------------------------------------------

 protocol Identifiable {
 var id: String { get set } //this is a description of what we want, rather than something we can create and use directly
 }
 struct User: Identifiable { //we can create a struct that conforms to it
 var id: String
 }
 func displayID(thing: Identifiable) { //a displaID() function that accepts any Identifiable
 print("My ID is \(thing.id)")
 }

//-----------------------------------------------------------------------------------------------------------------------------------

 protocol Payable {               //you can inherit from multiple protocols at the same time before you add
 func calculateWages() -> Int     //your own customizations on top
 }
 protocol NeedsTraining {
 func study()
 }
 protocol HasVacation {
 func takeVacation(days: Int)
 }
 protocol Employee: Payable, NeedsTraining, HasVacation { } //running these three protocols at once

 //-----------------------------------------------------------------------------------------------------------------------------------

 extension Int { //extensions allow you to add methods to existing types, to make them do things they were'nt originally designed to do
 func squared() -> Int {
 return self * self
 }
 }
 let number = 8
 number.squared()
 extension Int { //swift doesn't let you add stored properties in extensions, so you must use computed properties instead
 var isEven: Bool {
 return self % 2 == 0
 }
 }
 print(number.squared())

 //-----------------------------------------------------------------------------------------------------------------------------------

 let pythons = ["Baki", "İbo", "Dolak", "Albayrak", "Sedat", "Sedat"] //both array and set will now have that
 let beatles = Set(["John", "Paul", "George", "Ringo"])               //method, so we can try it out
 extension Collection { //swift's arrays and sets both conform to a protocol called Collection
 func summarize() {
 print("There are \(count) of us: ")
 for name in self {
 print(name)
 }
 }
 }
 pythons.summarize() //array called
 beatles.summarize() //set called

 //-----------------------------------------------------------------------------------------------------------------------------------

 protocol Identifiable { //protocol oriented programming
 var id: String { get set }
 func identify()
 }
 extension Identifiable { //protocol extensions allow us to provide a default
 func identify() {
 print("My ID is \(id) :)")
 }
 }
 struct User: Identifiable { //now when we create a type that conforms to Identifiable it gets identify() automatically
 var id: String
 }
 let resedat = User(id: "resedat")
resedat.identify()

 //-----------------------------------------------------------------------------------------------------------------------------------

 var age: Int? = nil //it might literally be missing, which is nil in Swift
 print(age)

//-----------------------------------------------------------------------------------------------------------------------------------

 var name: String? = nil //string defined but content uknown
 name = "resedat.ios"
 if let unwrapped = name {
 print("\(unwrapped.count) letters") //with count with saw how many letters the string consists of
 } else {
 print("missing name")
 }

 //-----------------------------------------------------------------------------------------------------------------------------------

 func greet(_ name: String?) {
 guard let unwrapped = name else { //guard let will unwrap an optional for you
 print("You didn't provide a name")
 return
 }
 print("Hello \(unwrapped)") //using guard let lets you deal with problems at the start of your functions,
 }                           // then exit immediately

//-----------------------------------------------------------------------------------------------------------------------------------

 let str = "5"
 let num = Int(str)! //force open result. As a result you should force unwrap only when you sure it's safe
 print(str)

 //-----------------------------------------------------------------------------------------------------------------------------------

 func username(for id: Int) -> String? { //the nil coalesting operator unwraps an optional and returns the value
 if id == 1 {                            //inside if there is one. If there is'nt a value-if the optional was nil-
 return "Taylor Swift"                   //then a default value is used instead
 } else {
 return nil
 }
 }
 let user = username(for: 1) ?? "Anonymous"
 print(user)

//-----------------------------------------------------------------------------------------------------------------------------------
 
 let names = ["Sedat", "ibrahim", "dolak", "memo"]
 let beatle = names.first?.uppercased() //capitalize all the letters in the string. That questing mark is optional chaining, if first return nil then swift won't try to uppercase it, and will set beatle to nil immediately
 print(beatle)

 //-----------------------------------------------------------------------------------------------------------------------------------

 enum PasswordError: Error { //error handling with enum
 case obvious
 }
 func checkPassword(_ password: String) throws -> Bool {
 if password == "password" {
 throw PasswordError.obvious
 }
 return true
 }
 do { //control with do, try and catch
 try checkPassword("password")
 print("That password is good")
 } catch {
 print("you can't use that passsword")
 }
 if let result = try? checkPassword("password") { //changes throwing functions into functions that return an optional
 print("Result was \(result)")
 } else {
 print("D'oh.")
 }
 try! checkPassword("sekrit") //the other alternative is try! = which you can use when you know for sure that the
 print("OK!")                 //function will not fail. if the function does throw an error your code will crash

 //-----------------------------------------------------------------------------------------------------------------------------------

 let str = "5"
 let num = Int(str) //that converts a string to an integer

 //-----------------------------------------------------------------------------------------------------------------------------------

struct Person {
    var id: String
    init?(id: String) {      //you can write in your own structs and classes by using init?() rather than init(),
        if id.count == 9 {   // and return nil if something goes wrong
            self.id = id
        } else {
            return nil
        }
    }
}

 //-----------------------------------------------------------------------------------------------------------------------------------

class Animal { }
class Fish: Animal {
    func soundWater() {
        print("bolkbolkbolk...")
    }
} //Fish class is defined inside Animal class
class Dog: Animal { //Dog class is defined inside Animal class
    func makeNoise() { //makeNoise function defined inside Dog class
        print("Woofff")
    }
}
let pets = [Fish(), Dog(), Fish(), Dog()] //we can call these classes as many times as we want
//if we want to loop ower the pets array and ask all the dogs to bark,we need to perform a typecast
//swift will check to see whether each pet is a dog object and if it is we can then call makeNoise()
for pet in pets { //
    if let dog = pet as? Dog {
        dog.makeNoise()
        dog.makeNoise()
    }
}
for pet1 in pets {
    if let fish = pet1 as? Fish { //the same feature was used for fish
        fish.soundWater()
    }
}

