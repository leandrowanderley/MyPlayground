
let guests = ["Mario", "Luigi", "Peach"]

if !guests.isEmpty{
    print("Guest count: \(guests.count)")
}

//extension Array {
//    var isNotEmpty: Bool {
//        isEmpty == false
//    }
//}


// Array, Set, and Dictionary they are all built-in protocol called Collection
// SOO just do like this

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Olá \(name)!")
    }
}

struct Employee: Person {
    var name: String
}

let employee = Employee(name: "João")
employee.sayHello()
