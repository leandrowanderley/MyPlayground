let sayHello = { (name: String) -> String in
    "Hello \(name)"
}

let team = ["Alice", "Bob", "Charlie", "Clara"]

let onlyC = team.filter({ (name: String) -> Bool in
    name.hasPrefix("C")
})

let starteam = ["Maria Clara", "Anakin Skywalker", "Princess Leya"]

let onlyM = starteam.filter { $0.hasPrefix("M") }

print(onlyC)
print(onlyM)
