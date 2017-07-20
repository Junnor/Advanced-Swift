

enum DQList<Element> {
    case end
    indirect case node(Element, next: DQList<Element>)
}

extension DQList {
    func cons(_ x: Element) -> DQList {
        return .node(x, next: self)
    }
}

extension DQList: ExpressibleByArrayLiteral {
    
    init(arrayLiteral elements: Element...) {
        self = elements.reversed().reduce(.end) { list, element in
            list.cons(element)
        }
    }
}

protocol DQStack {
    associatedtype Element
    
    mutating func push(element: Element)
    
    mutating func pop() -> Element?
}

extension Array: DQStack {
    
    mutating func push(element: Element) {
        self.append(element)
    }
    
    mutating func pop() -> Element? {
        return self.popLast()
    }
}

extension DQList: DQStack {
    
    mutating func push(element: Element) {
        self = self.cons(element)
    }
    
    mutating func pop() -> Element? {
        switch self {
        case .end:
            return nil
        case let .node(x, next: xs):
            self = xs
            return x
        }
    }

}

extension DQList: IteratorProtocol, Sequence {
    mutating func next() -> Element? {
        return pop()
    }
}


var list: DQList = ["3", "2", "1"]

for x in list {
    print(x)
}

let s = list.joined(separator: ", ")

// 没有变量指向的时候是会被回收的



