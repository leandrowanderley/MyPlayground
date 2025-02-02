class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10


class Employee {
    var hours: Int

    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }

}

class Developer: Employee {
    
    var preferedLanguage: String
    
    init(hours: Int, preferedLanguage: String) {
        self.preferedLanguage = preferedLanguage
        super.init(hours: hours)
    }
    
    override func printSummary() {
        print("I code \(hours) hours a day.")
    }

}

class Manager: Employee {
    override func printSummary() {
        print("I manage \(hours) hours a day.")
    }
}

let novall = Developer(hours: 8, preferedLanguage: "Swift")
novall.printSummary()



class User {
    var username = "Anonymous"
    
    func copy() -> User {
            let user = User()
            user.username = username
            return user
        }
}

var user1 = User()
var user2 = user1
var user3 = user1.copy()
user2.username = "Taylor"

print(user1.username)
print(user2.username)
print(user3.username)



