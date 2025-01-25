struct BankAccount {
    private var funds = 0 // Only acessable or changable on Struct
    fileprivate var seila = 1 // Only acessable or changable on File
    public var name = "Sandro" // Acessable and changable everywhere

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}


var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}
