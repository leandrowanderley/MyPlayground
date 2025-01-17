/**
 
 Firts Part
 
 */

var beatles = ["John", "Paul", " Ringo", "George"]
var numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

print(beatles.count)

beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")

// It will cause an error, because it the variable have a diferente type than the array type
// temperatures.append("Chris")

var albums = Array<String>()
var songs = [String]()

var scores = Array<Int>()
scores.append(4)
scores.append(8)
scores.append(10)
scores.append(2)
scores.append(5)

print(scores.count)

scores.remove(at: 2)
print(scores.count)

print(scores.contains(3))
print(scores.contains(8))

scores.removeAll()
print(scores.count)

var cities = ["London", "Maceió", "Naples", "Braga"]
cities.sorted()
var citiesreversed = cities.reversed()
print(citiesreversed)


/*
 
 Second Part
 
 */

var employee = ["Taylor Swift", "Singer", "Nashville"]
print("Name: \(employee[0])")
print("Job: \(employee[1])")
print("Location: \(employee[2])")

let employee2 = [
    "name": "Kelvin",
    "job": "Football player",
    "location": "São Paulo"
]
print("Name: \(employee2["name", default: "Unkwnown"])")
print("Job: \(employee2["job", default: "Unkwnown"])")
print("Location: \(employee2["location", default: "Unkwnown"])")


let hasgraduated = [
    "Guilherme": true,
    "Manoel": false,
    "Luva de Pedreiro": false,
    "Cristiano Ronaldo da Gama Jr.": true
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2018: "Tokyo"
]

print(olympics[2012, default: "Unknown"])

var heights = [String: Int]()
heights["Liu Kang"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron Jamea"] = 206


/*
 
 Third Part
 
 */


let actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Robert Pattinson"
])

//var actors2 = Set(String())
//actors2.insert("Denzel Washington")
//actors2.insert("Tom Cruise")
//actors2.insert("Nicolas Cage")
//actors2.insert("Robert Pattinson")
//
//print(actors2)


/*
 
 Fourth Part
 
 */

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .friday
day = .thursday
