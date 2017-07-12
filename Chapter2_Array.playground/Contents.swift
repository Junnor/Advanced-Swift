

extension Sequence {
    
    func dqAll(matching predicate: (Iterator.Element) -> Bool) -> Bool {
        return !contains { !predicate($0) }
    }
    
}

extension Array {
    func dqFilter(_ isIncluded: (Element) -> Bool) -> [Element] {
        var resutls = [Element]()
        
        for x in self where isIncluded(x) {
            resutls.append(x)
        }
        return resutls
    }
    
    func dqMap<T>(_ condition: (Element) -> T) -> [T] {
        var results = [T]()
        
        for x in self  {
            results.append(condition(x))
        }
        
        return results
    }
    
    
    func dqReduce<T>(_ initialValue: T, _ nextPartialResult: (T, Element) -> T) -> T {
        var result = initialValue
        for x in self {
            result = nextPartialResult(result, x)
        }
        return result
    }
    
    func dqFlatMap<T>(_ transform: (Element) -> [T]) -> [T] {
        var results: [T] = []
        for x in self {
            results.append(contentsOf: transform(x))
        }
        return results
    }
    
}

let fibs = [1, 2, 3, 4, 5]
let name = ["zhu", "deng", "quan"]

// ---------------------------

let slice = fibs[1..<fibs.endIndex]
type(of: slice)


