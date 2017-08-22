
import Foundation


func printInt(i: Int) {
    print("pass value: \(i)")
}

let funcVar = printInt

funcVar(10)


func useFunction(function: (Int) -> ()) {
    function(3)
}

func returnFunc() -> (Int) -> String {
    
    func innerFunc(i: Int) -> String {
        return "you pass: \(i)"
    }
    return innerFunc
}


useFunction(function: funcVar)
useFunction(function: printInt)

let funcValue = returnFunc()
funcValue(9)


func counterFunc() -> (Int) -> String {
    var counter = 0
    
    func innerFunc(i: Int) -> String {
        counter += i
        return "returning total: \(counter)"
    }
    return innerFunc
}


let a = counterFunc()
a(3)
a(9)

let b = counterFunc()
b(1)
b(100)


func doubler(i: Int) -> Int {
    return i * 2
}

[1, 2, 3, 4].map(doubler)

let doubleArt = { (i: Int) -> Int in
    return i * 2
}

[1, 2, 3, 4].map(doubleArt)

let value = [1, 2, 3].map { $0 * 2}
value



