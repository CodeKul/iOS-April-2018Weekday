//: Playground - noun: a place where people can play

import UIKit

func simpleFunction () {
    print("Codekul")
}

simpleFunction()

func functionWith(param : String) {
    print(param)
}

functionWith(param: "Rahul")

func cStyleFunction(_ a : Int) {
    print(a)
}

cStyleFunction(1)

func functionWithReturningValue () -> String {
    
    return "The Gurukul for coders!"
}

var str = functionWithReturningValue()

print(str)


