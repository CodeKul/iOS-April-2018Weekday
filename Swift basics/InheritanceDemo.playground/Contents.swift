//: Playground - noun: a place where people can play

import UIKit

class A {
    var a : Int
    
    init() {
        a = 0
    }
    
    init(a : Int) {
        self.a = a
    }
    
    func setA(a : Int) {
        self.a = a
    }
    
    func display() {
        print("value of a : \(a)")
    }
}

class B : A {
    override func display() {
        print("value of b : \(a)")
    }
}


var objA = A(a: 10)
var objB = B(a: 20)
var objC : A = B()

objA.display()
objB.display()
objC.display()



