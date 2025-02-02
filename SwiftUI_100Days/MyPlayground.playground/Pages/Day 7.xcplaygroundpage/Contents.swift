func showWelcomeMessage(name: String) {
    print(name)
}

showWelcomeMessage(name: "Swift")

func showAgeMessage(_ age: Int) {
    print(age)
}

showAgeMessage(20)

func getUser() -> (firstName: String, lastName: String) {
    return (firstName: "Davy", lastName: "Jones")
}

var x = getUser()
print("Olá \(x.firstName) \(x.lastName)")

func getUser2() -> (String, String) {
    ("Mago", "Dava Jonas")
}

var y = getUser2()
print("Olá \(y.0) \(y.1)")

let (firstname, lastname) = getUser()
print(firstname)
print(lastname)

let (firstname2, _) = getUser2()
print(firstname2)
