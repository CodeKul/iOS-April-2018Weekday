//: Playground - noun: a place where people can play

import UIKit

class Shape {
    
    var a : Int
    var b : Int
    
    init() {
        a = 0
        b = 0
    }
    
    init(a : Int, b : Int) {
        self.a = a
        self.b = b
    }
    
    func area() {
    }
}

class Triangle : Shape {
    override func area() {
        print("Area of Triangle: \((a * b) / 2)")
    }
}

class Square : Shape {
    override func area() {
        print("Area of Square: \(a * a)")
    }
}

class Circle : Shape {
    override func area() {
        print("Area of Circle: \(3.14 * Double(a) * Double(a))")
    }
}

var objA = Triangle(a: 10, b: 6)
var objB = Square(a: 34, b: 34)
var objc = Circle(a: 55, b: 23)

objA.area()
objB.area()
objc.area()





