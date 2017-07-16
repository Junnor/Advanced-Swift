



let naturals: Set = [1, 2, 3, 2]
naturals

naturals.contains(1)
naturals.contains(0)

let mmm = naturals.map { $0 * $0 }

mmm



let iPods: Set = ["iPod touch", "iPod nano", "iPod mini", "iPod shuf e", "iPod Classic"]
let discontinuedIPods: Set = ["iPod mini", "iPod Classic"]
let currentIPods = iPods.subtracting(discontinuedIPods)
currentIPods



extension Sequence where Iterator.Element: Hashable {
    
    func dqUnique() -> [Iterator.Element] {
        var seen: Set<Iterator.Element> = []
        return filter {
            if seen.contains($0) {
                return false
            } else {
                seen.insert($0)
                return true
            }
        }
    }
}


let value = [1, 2, 3, 4, 3, 4, 6, 8, 9, 1, 4].dqUnique()







