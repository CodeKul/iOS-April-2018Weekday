//: Playground - noun: a place where people can play

import UIKit

/*
 if conditon {
    true part
 }
 else {
    false part
 }
*/

var a = 11
var b = 10

if a < b {
    print("a is greater")
}
else {
    if a == b {
        print("a is equal to b")
    }
    else {
        print("b is greater")
    }
}

if a > 10 {
    print("a is greater than 10")
}
else if a == 10 {
    print("a is equal to 10")
}
else {
    print("a is less than 10")
}

/*
 initialisation
 while condition {
    statements
    incr/decr
 }
 */

var i = 0
while i < 10 {
    print("Codekul")
    i += 1
}

/*
 repeat {
 
 }while co  ndition
 */

print()
i = 0
repeat {
    print("Codekul")
    i += 1
}while i < 10

/*
 for data in collection {
    statements
 }
 */

for c in 0..<10 {
    print(c)
}

/*
 switch option {
 case opt:
    statement
 }
 */

var opt = 3
switch opt {
case 1:
    print("One")
    fallthrough
case 2:
    print("Two")
case 3:
    print("Three")
    fallthrough
case 4:
    print("Four")
case 5:
    print("Five")
case 6:
    print("Six")
case 7:
    print("Seven")
case 8:
    print("Eight")
case 9:
    print("Nine]")
case 0:
    print("Zero")
default:
    print("Enter valid digit")
}

var num = 45
i = 1

print("\ntable of \(num)\n")
while i <= 10 {
    
    print(i*num)
    i += 1
}






