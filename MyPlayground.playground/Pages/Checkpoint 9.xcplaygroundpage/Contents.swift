func function(array: [Int]?) -> Int {
    array?.randomElement() ?? Int.random(in: 1...100)
}

print(function(array: [0, 1]))
print(function(array: nil as [Int]?))
