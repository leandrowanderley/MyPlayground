class Animal {
    let legs: Int = 4
    
    func speak() {
        print("Animal sound")
    }
}

class Dog: Animal {
    override func speak() {
        print("Woof!")
    }
}

class Cat: Animal {
    
    var isTame: Bool
        
    init (isTame: Bool) {
        self.isTame = isTame
    }
    
    override func speak() {
        print("Meow!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Corgi Woof!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Poodle Woof!")
    }
}

class Persian: Cat {
    
    override init(isTame: Bool) {
        super.init(isTame: isTame)
    }
    
    override func speak() {
        print("Persian Meow!")
    }
}

class Lion: Cat {
    
    override init (isTame: Bool){
        super.init(isTame: isTame)
    }
    
    override func speak() {
        print("Lion Meow")
    }
}

var x = Lion(isTame: false)
var y = Persian(isTame: true)
x.speak()
y.speak()

print(x.legs)
