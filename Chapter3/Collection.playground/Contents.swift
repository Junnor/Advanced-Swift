

protocol DQQueue {
    
    associatedtype Element
    
    mutating func enqueue(_ newElement: Element)
    mutating func dequeue() -> Element?

}


protocol DQCollection: Collection, Sequence {
    
    associatedtype Index: Comparable
    
    var startIndex: Index { get }
    
    var endIndex: Index { get }
    
    func index(after i: Index) -> Index
    
    subscript(position: Index) -> Iterator.Element { get }
    
}

// A FIFO queue 

struct FIFOQueue<Element>: DQQueue {
    
    fileprivate var left: [Element] = []
    fileprivate var right: [Element] = []
    

    mutating func enqueue(_ newElement: Element) {
        right.append(newElement)
    }
    
    mutating func dequeue() -> (Element)? {
        if left.isEmpty {
            left = right.reversed()
            right.removeAll()
        }
        
        return left.popLast()
    }
    
}

//extension FIFOQueue: DQCollection {
//    
//    public var startIndex: Int { return 0 }
//    public var endIndex: Int { return left.count + right.count }
//    
//    
//    func index(after i: Int) -> Int {
//        precondition(i < endIndex)
//        return i + 1
//    }
//    
//    subscript(position: Index) -> Iterator.Element {
//        precondition((0..<endIndex).contains(position), "Index out of box")
//        
//        if position < left.endIndex {
//            return left[left.count - position - 1]
//        } else{
//            return right[position - left.count]
//        }
//    }
//
//}






