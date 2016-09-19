//: ## Lesson 6 Exercises - Classes, Properties and Methods

import UIKit

//: __Problem 1__
//:
//: __1a.__
//: The compiler is complaining because the class Animal has no initializers. Write an init method for the Animal class and quiet this error. Include a mechanism to initialize the length of the Animal's tail using the Tail struct provided.
struct Tail {
    let lengthInCm: Double
}

class Animal {
    init(species: String, tail: Tail) {
        self.species = species
        self.tail = tail
    }
    let species: String
    let tail: Tail
}
//: __1b.__
//: Instantiate and initialize a few different Animals.
let tiger = Animal(species: "tiger", tail: Tail(lengthInCm: 54.0))
let elephant = Animal(species: "elephant", tail: Tail(lengthInCm: 103.0))
//: __Problem 2__
//:
//: Below are the beginnings of the Peach class.
class Peach {
    let variety: String
    static let varieties: [String] = ["Babcock", "Bonita", "Cresthaven"]
    // Softness is rated on a scale from 1 to 5, with 5 being the softest
    var softness: Int
    
    init(variety: String, softness: Int) {
        self.variety = variety
        self.softness = softness
    }
    
    func ripen() -> String {
        if (softness == 5) {
            return "Your peach is ripen"
        } else {
            softness++
            return "Your peach is not ready. Try in another time"
        }
    }
}
//: __2a.__
//: Add a type property to the Peach class called "varieties". It should hold an array of different types of peaches.
//:
//: __2b.__
//: Add an instance method called ripen() that increases the value of the stored property, softness, and returns a string indicating whether the peach is ripe.
//:
//: __2c.__
//: Create an instance of the Peach class and call the method ripen().
let peach1 = Peach(variety: Peach.varieties[1], softness: 1)
print(peach1.ripen())
//: __Problem 3__
//:
//: __3a.__
//:Add the computed property, "cuddlability", to the class, FluffyDog. Cuddlability should be computed based on the values of the stored properties, fluffiness and droolFactor.
class FluffyDog {
    let name: String
    let fluffiness: Int
    let droolFactor: Int
    var cuddlability: String {
        if (fluffiness + droolFactor > 10) {
            return "bad dog"
        } else {
            return "good dog"
        }
    }
    
    init(name: String, fluffiness: Int, droolFactor: Int) {
        self.name = name
        self.fluffiness = fluffiness
        self.droolFactor = droolFactor
    }
    
    func chase(wheeledVehicle: String)-> String {
        return "Where are you going, \(wheeledVehicle)? Wait for me! No, don't go! I will catch you!"
    }
}
//: __3b.__
//: Instantiate and initialize an instance of the class, FluffyDog. Use it to call the method, chase().
let fluffyDog = FluffyDog(name: "Boddy", fluffiness: 4, droolFactor: 4)
fluffyDog.chase(fluffyDog.cuddlability)
//: __Problem 4__
//:
//: __4a.__
//: Write an instance method, bark(), that returns a different string based on the value of the stored property, size.
enum Size: Int {
    case Small
    case Medium
    case Large
}

class ChattyDog {
    let name: String
    let breed: String
    let size: Size
    
    init(name: String, breed: String, size: Size) {
        self.name = name
        self.breed = breed
        self.size = size
    }
    
    func bark() ->String {
        switch size {
        case .Small:
            return "bark!"
        case .Medium:
            return "baaaark!"
        case .Large:
            return "BAAAAAARK!!!!!!"
        }
    }
}


//: __4b.__
//: Create an instance of ChattyDog and use it to call the method, bark().
let chattyDob = ChattyDog(name: "Boddy", breed: "space dog", size: .Large)
chattyDob.bark()
//: __4c.__
//: Rewrite the method, bark(), as a type method and rename it speak(). Call your type method to test it out.

//: __Problem 5__
//:
//:__5a.__
//: Write an initialization method for the House class below.
enum Quality {
    case Poor, Fair, Good, Excellent
}

enum NaturalDisaster {
    case Earthquake
    case Wildfire
    case Hurricane
}

class House {
    let numberOfBedrooms: Int
    let location: Quality
    
    init(numberOfBedrooms: Int, location: Quality) {
        self.numberOfBedrooms = numberOfBedrooms
        self.location = location
    }
 
    func willStayStanding(naturalDisaster:NaturalDisaster)-> Bool {
        switch naturalDisaster {
        case .Earthquake:
            return true
        case .Wildfire:
            return true
        case .Hurricane:
            return false
        }
    }
}

//: __5b.__
//: Create an instance of the House class and use it to call the method, willStayStanding().  This method takes in a parameter of type NaturalDisaster and return a Bool indicating whether the house will stay standing in a given natural disaster.

//: __5c.__
//: Add a computed property called, "worthyOfAnOffer". This property should be a Bool, whose return value is dependent upon some combination of the stored properties, numberOfBedrooms and location.

