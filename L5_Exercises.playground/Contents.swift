//: # Lesson 5 Exercises - Defining and Calling Functions

import Foundation

//: __Problem 1.__
//:
//:Earlier we used the method, removeAtIndex() to remove the first letter of a string. This method belongs to the String class. See if you can use this same method to return the last letter of a string.

//:Test out your discovery below by returning the last letter of the String, "bologna".
var word = "bologna"
print(word.characters.last!)

//: __Problem 2__
//:
//: Write a function called combineLastCharacters. It should take in an array of strings, collect the last character of each string and combine those characters to make a new string to return. Use the strategy you discovered in Problem 1 along with a for-in loop to write combineLastCharacters. Then try it on the nonsenseArray below.
var nonsenseArray = ["bungalow", "buffalo", "indigo", "although", "Ontario", "albino", "%$&#!"]

func combineLastCharaters(inputArrayOfWords:[String]) -> String {
    var outputString = String()
    inputArrayOfWords.map{ outputString.append($0.characters.last!) }
    return outputString
}

combineLastCharaters(nonsenseArray)


//: __Problem 3__
//:
//: Imagine you are writing an app that keeps track of what you spend during the week. Prices of items purchased are entered into a "price" textfield. The "price" field should only allow numbers, no letters.
let digits = NSCharacterSet.decimalDigitCharacterSet()
//: NSCharacterSet.decimalDigitCharacterSet() is used above to define a set that is only digits. Using that set, write a function that takes in a String and returns true if that string is numeric and false if it contains any characters that are not numbers.
func isThisStringIsNumeric(inputString: String) ->Bool {
    let newCharacterSet = NSCharacterSet(charactersInString: inputString);
    return digits.isSupersetOfSet(newCharacterSet)
}

isThisStringIsNumeric("44")

//: __Problem 4__
//:
//: Write a function that takes in an array of dirtyWord strings, removes all of the four-letter words, and returns a clean array.
let dirtyWordsArray = ["phooey", "darn", "drat", "blurgh", "jupiters", "argh", "fudge"]

func removeAllTheFourLetterWords(dirtyWordArray:[String]) -> [String] {
    return dirtyWordArray.filter { $0.characters.count != 4 }
}

removeAllTheFourLetterWords(dirtyWordsArray)

//: __Problem 5__
//:
//: Write a method, filterByDirector, that belongs to the MovieArchive class.  This method should take in a dictionary of movie titles and a string representing the name of a director and return an array of movies created by that director. You can use the movie dictionary below. To test your method, instantiate an instance of the MovieArchive class and call filterByDirector from that instance.

var movies:Dictionary<String,String> = [ "Boyhood":"Richard Linklater","Inception":"Christopher Nolan", "The Hurt Locker":"Kathryn Bigelow", "Selma":"Ava Du Vernay", "Interstellar":"Christopher Nolan"]

class MovieArchive {
    func filterByDirector(inputDictionary inputDictionary: [String: String], director: String) -> [String] {
        return inputDictionary.filter { $1 == director }.flatMap { $0.0 }
    }
}

let movieArchive = MovieArchive()

movieArchive.filterByDirector(inputDictionary: movies, director: "Christopher Nolan")

