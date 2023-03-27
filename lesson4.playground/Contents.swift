import UIKit

func multiplyTwoNumber() -> Int {
    
let a = 8
    let b = 2
    
    return a * b
}
print("result will be: ", multiplyTwoNumber())


func muptiplyNumbers(numberOne a: Int, numberTwo b: Int) -> Int {
    return a * b
}
muptiplyNumbers(numberOne: 8, numberTwo: 10)


func average (_ myNumber: Double...) -> Double {
    
    var total: Double = 0.0
    for num in myNumber{
        total += num
    }
    return total / Double(myNumber.count)
}
average(5, 10, 5, 10)

let someValue = 5
let arrayOfNumbers = [1, 2, 4, 6]

func filterLessThan(intValue: Int, numbers: [Int]) -> [Int] {
    
    var filteredNumbers: [Int] = []
    
    for numb  in numbers {
        if numb < intValue {
            filteredNumbers.append(numb)
        }
    }
    return filteredNumbers
}
filterLessThan(intValue: someValue, numbers: arrayOfNumbers)



func calculateDateValue(from myDay: Int, _ myMonth: Int, _ myYear: Int){
    
    let currentDate = Date()
    
    var dateComponents = DateComponents()
    dateComponents.day = myDay
    dateComponents.month = myMonth
    dateComponents.year = myYear
    
    let userCalendar = Calendar.current
    
    if let calculatedDate = userCalendar.date(from: dateComponents) {
        
        let dayPassed = userCalendar.dateComponents([.day], from: calculatedDate, to: currentDate).day
        let monthPassed = userCalendar.dateComponents([.month], from: calculatedDate, to: currentDate).month
        let yearPassed = userCalendar.dateComponents([.year], from: calculatedDate, to: currentDate).year
        
        print("\(yearPassed ?? 0) years, \(monthPassed ?? 0) months and \(dayPassed ?? 0) days have passed since")
    }
    
}

calculateDateValue(from: 27, 7, 2000)
