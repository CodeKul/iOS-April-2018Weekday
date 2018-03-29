//: Playground - noun: a place where people can play

import UIKit

class MyClass {
    
    private var myVar1 : String
    private var myVar2 : Int
    private var myVar3 : Double
    
    init() {
        myVar1 = ""
        myVar2 = 0
        myVar3 = 0.0
    }
    
    init(myVar1 : String, myVar2 : Int, myVar3 : Double) {
        self.myVar1 = myVar1
        self.myVar2 = myVar2
        self.myVar3 = myVar3
    }
    
    init(obj : MyClass) {
        self.myVar1 = obj.myVar1
        self.myVar2 = obj.myVar2
        self.myVar3 = obj.myVar3
    }
    
    func setData(myVar1: String, myVar2: Int, myVar3: Double) {
        self.myVar1 = myVar1
        self.myVar2 = myVar2
        self.myVar3 = myVar3
    }
    
    func display() {
        print("myVar1: \(myVar1)\nmyVar2: \(myVar2)\nmyVar3: \(myVar3)\n")
    }
}

var myObj1 = MyClass()
myObj1.setData(myVar1: "Varun", myVar2: 25, myVar3: 35.846)
myObj1.display()

var myObj2 = MyClass(myVar1: "Rahul", myVar2: 23, myVar3: 100.37)
myObj2.display()

var myObj3 = MyClass(obj: myObj2)
myObj3.setData(myVar1: "Sagar", myVar2: 83, myVar3: 84.457)
myObj3.display()

