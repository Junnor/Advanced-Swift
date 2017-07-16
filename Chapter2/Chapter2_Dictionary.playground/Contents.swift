
enum Setting {
    case text(String)
    case bool(Bool)
    case int(Int)
}

let defaultStting: [String: Setting] = [
    "Name": .text("My Iphone"),
    "Airplan Mode": .bool(true)
]



var mutableDic = defaultStting

mutableDic["Name"] = .text("dq")

mutableDic["Do Not Disturb"] = .bool(true)

let oldValue = mutableDic.updateValue(.text("deng"), forKey: "Name")
oldValue

print(mutableDic)