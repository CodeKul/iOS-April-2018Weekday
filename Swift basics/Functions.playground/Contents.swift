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

var myFunctionVar : (String) -> () = functionWith

myFunctionVar("Varun")

func callByReference(value : inout String) {
    value += "Codekul"
}

var str1 = "The best training institute in Pune is "
callByReference(value: &str1)
print(str1)

func functionWithDefault(value : Int = 10) {
    print(value)
}

functionWithDefault(value: 30)
functionWithDefault()

func cStyleFunction(_ a : Int) {
    print(a)
}

cStyleFunction(1)


func functionWithReturningValue () -> String {
    
    return "The Gurukul for coders!"
}

var str = functionWithReturningValue()

print(str)

func nestedFunction() {
    
    print("nestedFunction")
    func innerFunction(){
    print("innerFunction")
    }
    
    innerFunction()
}

nestedFunction()

