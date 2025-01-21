//struct Employee {
//    let name: String
//    var vacationRemaining: Int
//}
//
//var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
//archer.vacationRemaining -= 5
//print(archer.vacationRemaining)
//archer.vacationRemaining -= 3
//print(archer.vacationRemaining)


struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }

        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
print(String(archer.vacationAllocated) + " | " + String(archer.vacationTaken) + " | " + String(archer.vacationRemaining) + " | ")
archer.vacationTaken += 4
print(String(archer.vacationAllocated) + " | " + String(archer.vacationTaken) + " | " + String(archer.vacationRemaining) + " | ")
archer.vacationRemaining = 6
print(String(archer.vacationAllocated) + " | " + String(archer.vacationTaken) + " | " + String(archer.vacationRemaining) + " | ")
