
enum ErrorNumber: Error {
    case negativeNumber
    case bigNumber
    case nilNumber
}

func squareroot(_ num: Int?) throws -> Int {
    
    guard let num = num else {
        throw ErrorNumber.nilNumber
    }
    
    if num < 0 {
        throw ErrorNumber.negativeNumber
    } else if num > 10000 {
        throw ErrorNumber.bigNumber
    }
    
    var low = 1
    var high = num
    var result = 0
    
    while low <= high {
        let mid = low + (high - low) / 2
        
        if mid * mid == num {
            result = mid
            break
        } else if mid * mid < num {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }
    
    return result
    
}

do {
    let result = try squareroot(49)
    if result == 0 {
        print("no root")
    } else {
        print("Root: \(result)")
    }
} catch {
    print("ERROR: \(error)")
}
