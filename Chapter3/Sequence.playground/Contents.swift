



struct constantIterator: IteratorProtocol {
    
    typealias Element = Int
    
    mutating func next() -> Int? {
        return 1
    }
}


struct FibsIteator: IteratorProtocol {
    
    var state = (0, 1)
    
    typealias Element = Int
    
    mutating func next() -> Int? {
        let upcomming = state.0
        state = (state.1, state.0 + state.1)
        
        return upcomming
    }
}

struct PrefixIterator: IteratorProtocol {
    
    let string: String
    var offset: String.Index
    
    init(string: String) {
        self.string = string
        offset = string.startIndex
    }
    
    mutating func next() -> String? {
        guard offset < string.endIndex else { return nil }
        
        offset = string.index(after: offset)
        return string[string.startIndex..<offset]
    }
}

struct PrefixSequnece: Sequence {
    
    let string: String
    
    func makeIterator() -> PrefixIterator {
        return PrefixIterator(string: string)
    }
}

let hello = "Hello"

let map = PrefixSequnece(string: hello).map { $0.uppercased() }
print(map)

