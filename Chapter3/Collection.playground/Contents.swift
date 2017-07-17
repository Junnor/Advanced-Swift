

protocol DQQueue {
    
    
    associatedtype Element
    
    mutating func enqueue(_ newElement: Element)
    mutating func dequeue() -> Element?

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



var fifo = FIFOQueue(left: [""], right: [""])
fifo.left.removeAll()
fifo.right.removeAll()

fifo.enqueue("zhu")
fifo.enqueue("deng")
var value = fifo.dequeue()

value


fifo.enqueue("quan")

value = fifo.dequeue()


value




