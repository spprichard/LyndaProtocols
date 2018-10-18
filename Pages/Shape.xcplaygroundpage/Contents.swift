//: [Previous](@previous)

import Foundation

// NOTE:
// Shape defines what it means to be a Shape.
// It leaves the implementation details to the conforming Object (Struct)
// This is opposed to having an extension of Shape provide a default implementation
// It's seems obvious here that for this example, not providing a default implementation
// is correct becuase computing the area of a shape is different depending on the shape itself

protocol Shape {
    var area: Double { get }
}

struct Square: Shape {
    let side: Double
    
    var area: Double {
        return side * side
    }
}

struct Rectangle: Shape {
    let width: Double
    let height: Double
    
    var area: Double {
        return width * height
    }
}

struct Circle: Shape {
    let radius: Double
    
    var area: Double {
        return .pi * radius * radius
    }
}

// Polymorphism -> Many Forms
var shape: Shape = Rectangle(width: 10.0, height: 20.0)
print(shape.area)

// Video Example:
//  var shape: Shape
//  shape: Shape = Rectangle(width: 10.0, height: 20.0)
//  print(shape.area)


shape = Circle(radius: 5.0)
print(shape.area)

//: [Next](@next)
