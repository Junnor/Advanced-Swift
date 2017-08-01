
import UIKit

var arr = ["one", "two", "three"]


switch arr.index(of: "two") {
case let indx?:
    print("index: \(indx)")
case nil:
    break
}

//let urlString = "http://www.objc.io/logo.png"
//
//if let url = URL(string: urlString), url.pathExtension = "png"
//    let data = try? Data(contentsOf: url),
//    let image = UIImage(data: data) {
//    let view = UIImageView(image: image)
//    
//    print("image: \(image)")
//    
////    PlaygroundQuickLook.view(view)
//
//}

for i in 0..<10 where i % 2 == 0 {
    print(i)
}

var a: [() -> Int] = []

for i in 1...3 {
    a.append {i}
}

for f in a {
    print("\(f())", terminator: " ")
}
