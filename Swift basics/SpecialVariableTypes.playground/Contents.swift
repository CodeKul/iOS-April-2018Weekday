//: Playground - noun: a place where people can play

import UIKit

var a = 10
var b : Double
b = 10

var c : Any

c = 10
c = "string"
c = 10.10

print((c as! Double))

//Optional

var myVar : Int? = 10

myVar = nil

myVar = 20

if myVar != nil {
    print(myVar!)
}

// Tuple

var t = (1,2,3,4, "one", "Two", "Three", 5.5, 6.6, 7.7)

t.5
