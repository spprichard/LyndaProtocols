import UIKit

protocol BinaryRepresentable {
    var tag: String {get set}
    var data: Data { get }
    static var counter: Int { get }
    mutating func incrementCounter()
    
    mutating func update(data: Data) -> Bool
    
    init(tag: String, data: Data)
}

struct TaggedData: BinaryRepresentable {
    var tag: String
    
    var data: Data
    
    static var counter: Int = 0
    
    func incrementCounter() {
         TaggedData.counter += 1
    }
    
    func update(data: Data) -> Bool {
        return false
    }
    
    init(tag: String, data: Data) {
        self.tag = tag
        self.data = data
    }
    
    
}
