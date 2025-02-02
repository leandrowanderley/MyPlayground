struct Car {
    public let model: String
    public let numberOfSeats: Int
    public let numberOfGears: Int
    private var currentGear: Int
    
    init(model: String, numberOfSeats: Int, numberOfGears: Int) {
        if numberOfGears < 1 && numberOfGears > 10 {
            print("Using number of gears as 4, because it is the most common number of gears in a car, and you number is out of range!")
            numberOfGears = 4
        }
            
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.numberOfGears = numberOfGears
        self.currentGear = 0
    }
    
    mutating func gearUp() {
        if currentGear < numberOfGears {
            print("Max gear already reached!")
            return
        }
        currentGear += 1
    }
    
    mutating func gearDown() {
        if currentGear > 0 {
            currentGear -= 1
            return
        }
        print("Min gear already reached!")
    }
}

var car = Car(model: "McLaren Senna", numberOfSeats: 2, numberOfGears: 8)

print(car)

