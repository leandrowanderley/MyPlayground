func greetUser() {
    print("Hi there!")
}

greetUser()
var greetCopy: () -> Void = greetUser
greetCopy()


// Closure
let sayHello = {
    print("Hello")
}

sayHello()

let sayHello2 = { (name: String) -> String in
    "Hello \(name)"
}


func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "John"
    } else {
        return "Unknown"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

let sayHelloTo = { (name: String) -> String in
    "Hi \(name)!"
}

print(sayHelloTo("Vasco"))


let team = ["Vasco", "Joao", "Pedro", "CSA", "Madureira"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Joao" {
        return  true
    } else if name2 == "Joao" {
        return false
    }
    
    return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

//let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
//                                          if name1 == "Joao" {
//                                              return  true
//                                          } else if name2 == "Joao" {
//                                              return false
//                                          }
//                                          
//                                          return name1 < name2
//})
//
//print(captainFirstTeam)


//let captainFirstTeam = team.sorted(by: { a, b in
//                                          if a == "Joao" {
//                                              return  true
//                                          } else if b == "Joao" {
//                                              return false
//                                          }
//                                          
//                                          return a < b
//})
//
//print(captainFirstTeam)

let captainFirstTeam = team.sorted(by: {
                                          if $0 == "Joao" {
                                              return  true
                                          } else if $1 == "Joao" {
                                              return false
                                          }
                                          
                                          return $0 < $1
})

print(captainFirstTeam)

let reverseTeam = team.sorted { $0 > $1 }

let tOnly = team.filter { $0.hasPrefix("M") }
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)


func makeAray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int] ()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

let rolls = makeAray(size: 50, using: {
    Int.random(in: 1...20)
})

print(rolls)


func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeAray(size: 50, using: generateNumber)
print(newRolls)


func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first")
    first()
    print("About to start second")
    second()
    print("About to start third")
    third()
}

doImportantWork(first: {
    print("This is first")
}, second: {
    print("This is second")
}, third: {
    print("This is third")
})
