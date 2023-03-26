import UIKit

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */

let formatter = DateFormatter()
formatter.dateFormat = "dd.MM.yyyy"

let calendar = Calendar.current

let currentDate = Date()

let myBirtDateString = "27.07.2000"

let myBirthDay = formatter.date(from: myBirtDateString) ?? Date()

var totalYearsFromBirth = calendar.dateComponents([.year], from: myBirthDay, to: currentDate).year
var totalMonthFromBirth = calendar.dateComponents([.month], from: myBirthDay, to: currentDate).month
var totalDayFromBirth = calendar.dateComponents([.day], from: myBirthDay, to: currentDate).day

if totalYearsFromBirth == 0 || totalMonthFromBirth == 0 || totalDayFromBirth == 0 {
    print("unable to convert")
}else{
    print("Total years: \(totalYearsFromBirth), total months: \(totalMonthFromBirth), total days: \(totalDayFromBirth)")
}

// Collection Arrays

let arrayOfString: [String] = ["a", "b", "c", "a", "a"]


var fruits = ["mango", "durian"]
fruits.reverse()
print(fruits.sorted())

//Set

let setOfString: Set<String> = ["a", "b", "c"]
var setOfChar = Set<Character>()
setOfChar = ["a"]
setOfChar.insert("b")
setOfChar.insert("c")

setOfChar.contains("c")
print(setOfChar)
