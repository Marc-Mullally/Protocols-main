/*:
 ## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
class Human : CustomStringConvertible {
    var name : String
    var age : Int
    
    init(name : String, age : Int) {
        self.name = name
        self.age = age
    }
    
    var description: String {
        return "Name: \(name), Age: \(age)"
    }
    
    static func ==(lhs : Human, rhs : Human) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    
    static func <(lhs : Human, rhs : Human) -> Bool {
        return lhs.age < rhs.age
    }
}

var man = Human(name: "man", age: 2)
var woman = Human(name: "woman", age: 2)

/*:
 Make the `Human` class adopt the `CustomStringConvertible`. Print both of your previously initialized `Human` objects.
 */
print(man)
print(woman)
/*:
 Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
 */
print(man == woman)

/*:
 Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
 */
var person = Human(name : "Person", age : 3)
let people = [man, person, woman]
let sortedPeople = people.sorted(by: <)


import Foundation


//: page 1 of 2  |  [Next: App Exercise - Printable Workouts](@next)
