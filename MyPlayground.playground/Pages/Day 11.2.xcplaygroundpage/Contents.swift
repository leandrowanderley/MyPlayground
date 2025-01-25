
struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Vasco da Gama")
print(School.studentCount))

struct AppData {
    static let version = "1.0"
    static let saveFileName = "savedata.json"
    static let homeURL = "https://www.google.com"
}

struct Employee {
    let userName: String
    let password: String
    
    static let example = Employee(userName = "dbuahbfahbd", password = "wdwdwdkwdk")
}
