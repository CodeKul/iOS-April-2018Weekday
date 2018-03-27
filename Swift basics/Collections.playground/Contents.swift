//: Playground - noun: a place where people can play

import UIKit

//Array

var myArr1 = [1,2,3,4,5,6,7,8,9]

var myArr2 : [String]

var myArr3 = [String]()

var myArr4 = Array<Double>()

myArr1.append(10)

myArr1.count

myArr1.insert(0, at: 0)

myArr1.remove(at: 3)

print(myArr1)

for element in myArr1 {
    print(element)
}

// Dictionary

var myDict1 = ["key" : "value", "newKey" : "newValue"]

myDict1["key"]

myDict1["againNewKey"] = "againNewValue"

print(myDict1)

var myDict2 : [String : Int]
myDict2 = [String : Int]()
myDict2["someKey"] = 40

var myDict3 = Dictionary<String, Double>()

// Sets

var mySet1 = Set<String>()
mySet1.insert("Rahul")
mySet1.insert("Ganesh")
mySet1.insert("Sachin")
mySet1.insert("Atul")
mySet1.insert("Manoj")

var mySet2 = Set<String>()
mySet2.insert("Avinash")
mySet2.insert("Yogesh")
mySet2.insert("Manoj")
mySet2.insert("Mahesh")
mySet2.insert("Varun")

mySet1.intersection(mySet2)
mySet1.union(mySet2)

mySet1.subtracting(mySet2)





