import UIKit

extension String{
    func fisk() -> String {
        var charArray = [Character]()
        for char in self.characters {
            charArray.insert(char, at: 0)
        }
        return String(charArray)
    }
}

var name = "Casper Fonseca"

name.fisk()

extension Int{
    func square() -> Int {
        return self * self
    }
}

var value = 9
value.square()


extension Double {
    mutating func area() {
        let pi = 3.1415
        self = pi * (self * self)
    }
}

class Circle {
    var radius: Double
    init(radius: Double){
        self.radius = radius
    }
}

var circle = Circle(radius: 4)
circle.radius.area()
print(circle.radius)


