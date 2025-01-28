protocol Building {
    var rooms: Int { get }
    var cost: Int { get }
    var nameEstateAgent: String { get }
    
    func summary()
}

extension Building {
    func summary() {
        print("\(nameEstateAgent) - \(cost) - \(rooms)")
    }
}

struct Home: Building {
    
    var rooms: Int
    var cost: Int
    var nameEstateAgent: String
    
    init (_ rooms: Int, _ cost: Int = 500000, _ nameEstateAgent: String) {
        self.rooms = rooms
        self.cost = cost
        self.nameEstateAgent = nameEstateAgent
    }
    
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var nameEstateAgent: String
    
    init (_ rooms: Int, _ cost: Int = Int.random(in: 100000...500000), _ nameEstateAgent: String) {
        self.rooms = rooms
        self.cost = cost
        self.nameEstateAgent = nameEstateAgent
    }
}

var home = Home(2, 300000, "MP")
var office = Office(2, 700000, "UFAL")
home.summary()
office.summary()
