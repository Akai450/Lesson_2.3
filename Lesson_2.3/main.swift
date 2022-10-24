import Foundation
//Инкапсуляция
class Shop {
    private var name: String
    public var location: String //public - невидимое свойство переменной
    
    init(name: String, location: String) {
        self.name = name
        self.location = location
    }
    func changeName(name: String) {
        self.name = name
    }
    func changeNameAgain(name: String) {
        changeName(name: name)
    }
}
var shop1 = Shop(name: "frunze", location: "plaza")
shop1.changeName(name: "globus")
shop1.changeNameAgain(name: "narodnyi")
dump(shop1)

class Car {
    var name: String
    public var model: String //public - невидимое свойство переменной
    private var array: [Int] = []
    
    init(name: String, model: String) {
        self.name = name
        self.model = model
    }
    func addToArray(number: Int) {
        array.append(number)
    }
    func getArray() {
        dump(array)
    }
}
var toyota = Car(name: "Toyota", model: "Camry")
toyota.addToArray(number: 45)
toyota.getArray()


//Цикл в цикле

//let a = 10
//let b = 15
//let c = 30
//let str = "A"
//
//for num in 1...a {
//    for num2 in 1...b {
//        for num3 in 1...c {
//        print("\(num) * \(num2) * \(num3) = \(num * num2 * num3)")
//        }
//    }
//}
let total = 1_000_000
let target = 9654
var found = false
var min = 0
var max = total
var count = 0

while found == false {
    var mid = (max + min) / 2
    count += 1
    if mid == target {
        found == true
        print("\(count) раз понадобилось, чтобы найти пароль")
        break
    } else if mid < target {
        min = mid
        
    } else if mid > target {
        max = mid
    }
}


let total1 = 1_000_000
var found1 = false
var min1 = 0
var max1 = total
var count1 = 0

func findNum() {

}
