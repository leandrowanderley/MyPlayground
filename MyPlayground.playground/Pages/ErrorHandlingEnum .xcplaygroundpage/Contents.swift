enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 10 {
        return "OK"
    } else {
        return "GOOD"
    }
}

do {
    let result = try checkPassword("11111111")
    print("Password rating: \(result)")
} catch PasswordError.obvious {
    print("I have the same password")
} catch {
    print("There was an error.")
}
