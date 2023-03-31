import UIKit

enum CalculationType: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}

var calc = CalculationType.additiona

print(calc.rawValue)



enum Planet: Int {
    case mercury = 1, mars, saturn, venus, earth, jupiter, uranus, neptun
}



var earthPlanet = Planet.earth
print("earth is the \(earthPlanet.rawValue) planet from the sun")




enum Weekend{
    case saturday(String)
    case sunday(String, Int, String)
    
}

var wnd = Weekend.sunday("setup bed time at", 11, "PM")



// Struct


struct CheesBoard {
    
    var player: String?
    var x: Int?
    var y: Int?
    
    func getPositionOntheBoard(){
        print("The position of \(player ?? "Robot") is x:\(x ?? 0), y: \(y ?? 0)")
    }
}

var  playerOne = CheesBoard(player: "Tom", x: 12, y: 1)
var playerTwo = CheesBoard(player: "Sam", x: 3, y: 1)

playerOne.getPositionOntheBoard()
playerTwo.getPositionOntheBoard()


class MacBook {
    var model: String
    var year: Int
    var color: String
    
    init(model: String, year: Int, color: String){
        self.year = year
        self.model = model
        self.color = color
    }
    
    func getSpecs(){
        print("\(model), \(year), \(color)")
    }
}

let macBookPro = MacBook(model: "macBookPro", year: 2019, color: "Grey")

macBookPro.getSpecs()

let macBookAir = macBookPro

macBookAir.model = "MacBook Air"
macBookAir.year = 2023

macBookPro.getSpecs()
macBookAir.getSpecs()



struct iPhone {
    var model: String?
    var year: Int?
    var color: String?
    
    func getSpecs(){
        print("\(model ?? "error), \(year ?? 0), \(color ?? "none")")
    }
}
              
var iPhoneXR = iPhone(model: "iPhoneXR", year: 2018, color: "black")
var iPhoneXS = iPhoneXR
              
iPhoneXS.model = "iPhoneXS"

iPhoneXR.getSpecs()
iPhoneXS.getSpecs()
              
