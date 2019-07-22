//
//  main.swift
//  Calculator
//
//  Created by EricM on 7/22/19.
//  Copyright © 2019 EricM. All rights reserved.
//

import Foundation
// part 1
//var operations: ([String: (Double, Double) -> Double]) = ["+": { $0 + $1 },
//                                                          "-": { $0 - $1 },
//                                                          "*": { $0 * $1 },
//                                                          "/": { $0 / $1 }]
//
//print("Please enter your 2 numbers and an operand of either +,-,*,/")
//
//print("Number1:", terminator: "")
//var num1 = 0.0
//if let input1 = readLine(){
//    num1 = Double(input1) ?? 0.0
//}
//print("Number2:", terminator: "")
//var num2 = 0.0
//if let input2 = readLine(){
//    num2 = Double(input2) ?? 0.0
//}
//print("Operand:", terminator: "")
//let input3 = readLine()
//
//
//switch input3 {
//case "+":
//    print("\(num1) + \(num2) = \(operations["+"]!(num1,num2))")
//    break
//case "-":
//    print("\(num1) - \(num2) = \(operations["-"]!(num1,num2))")
//    break
//case "*":
//    print("\(num1) * \(num2) = \(operations["*"]!(num1,num2))")
//    break
//case "/":
//    print("\(num1) / \(num2) = \(operations["/"]!(num1,num2))")
//    break
//default:
//    print("Not an operand)")
//}


//---------------------------------------------------------------------
//---------------------------------------------------------------------


//PART 1B and 1C
//import Foundation
//var operations: ([String: (Double, Double) -> Double]) = ["+": { $0 + $1 },
//                                                          "-": { $0 - $1 },
//                                                          "*": { $0 * $1 },
//                                                          "/": { $0 / $1 },]
//print("Please enter your 2 numbers and an operand of either +,-,*,/ or ? for minigame")
//
//print("Number1:", terminator: " ")
//var num1 = 0.0
//if let input1 = readLine(){
//    num1 = Double(input1) ?? 0.0
//}
//print("Number2:", terminator: " ")
//var num2 = 0.0
//if let input2 = readLine(){
//    num2 = Double(input2) ?? 0.0
//}
//print("Operand:", terminator: " ")
//let input3 = readLine()
//
//let rand = arc4random_uniform(4)
//var empty = Double()
//func minigame()-> Double{
//    switch rand{
//    case 0 :
//        empty = operations["+"]!(num1,num2)
//        break
//    case 1 :
//        empty = operations["-"]!(num1,num2)
//        break
//    case 2 :
//        empty = operations["*"]!(num1,num2)
//        break
//    case 3 :
//        empty = operations["/"]!(num1,num2)
//        break
//    default:
//        print("not a real numer")
//    }
//    return empty
//}
//func guess()->Bool{
//    print("Guess the operand", terminator: " ")
//    let guess = readLine()
//    var answer = Double()
//    switch guess {
//    case "+" :
//        answer = operations["+"]!(num1,num2)
//        break
//    case "-" :
//        answer = operations["+"]!(num1,num2)
//        break
//    case "*" :
//        answer = operations["*"]!(num1,num2)
//        break
//    case "/" :
//        answer = operations["/"]!(num1,num2)
//        break
//    default:
//        print("not an operand")
//    }
//    if answer == empty{
//        print("You got it correct")
//        return false
//    }
//    else{
//        print("Incorrect try again")
//        return true
//    }
//}
//
//switch input3 {
//case "+":
//    print("\(num1) + \(num2) = \(operations["+"]!(num1,num2))")
//    break
//case "-":
//    print("\(num1) - \(num2) = \(operations["-"]!(num1,num2))")
//    break
//case "*":
//    print("\(num1) * \(num2) = \(operations["*"]!(num1,num2))")
//    break
//case "/":
//    print("\(num1) / \(num2) = \(operations["/"]!(num1,num2))")
//    break
//case "?":
//    print("Guess the operand for \(num1) ? \(num2) = \(minigame())")
//    while guess() == true{
//        guess()
//    }
//    break
//default:
//    print("Not an operand)")
//}


//---------------------------------------------------------------------
//---------------------------------------------------------------------


//question 2
print("Choose a Highorder Function map,filter,reduce")

print("map, filter, reduce :", terminator: "")
var choice1 = String()
if let input1 = readLine(){
    choice1 = input1
}
print("choose your numbers for the array with spaces please:")
var choice2 = String()
if let input2 = readLine(){
    choice2 = input2
}
var convert = choice2.components(separatedBy:" ")
var intConvert = [Int]()
for i in convert{
    intConvert.append(Int(i) ?? 0)
}
print(intConvert)


print("Available operands for map +,-,*,/")
print("Available operands for filter <,>")
print("Available operands for reduce +,*")
print("Choose an operand:", terminator: "")
let input3 = readLine()


print("Choose a number to alter by:", terminator: "")
var num1 = 0
if let input4 = readLine(){
    num1 = Int(input4) ?? 0
}

var emptyArr2 = [Int]()
func myMap(inputArray: [Int], map: Int) -> [Int]{
    //var emptyArr2 = [Int]()
    switch input3 {
    case "+":
        for i in inputArray{
            emptyArr2.append(i + map)
        }
        break
    case "-":
        for i in inputArray{
            emptyArr2.append(i - map)
        }
        break
    case "*":
        for i in inputArray{
            emptyArr2.append(i * map)
        }
        break
    case "/":
        for i in inputArray{
            emptyArr2.append(i / map)
        }
        break
    default:
        emptyArr2 = [Int]() // reset
        print("Not an operand within map)")
    }
    return emptyArr2
}
var emptyArr1 = [Int]()
func myFilter(inputArray: [Int], filter: (Int))-> [Int]{
    //var emptyArr1 = [Int]()
    switch input3 {
    case ">":
        for i in inputArray{
            if i > num1 {
                emptyArr1.append(i)
            }
        }
        break
    case "<":
        for i in inputArray{
            if i < num1{
                emptyArr1.append(i)
            }
        }
    default:
        print("Iunno")
    }
    return emptyArr1
}


var emptyArr3 = Int()
func myReduce(inputArray: [Int], reduce: (Int)) -> Int{
    //var emptyArr3 = [Int]()
    switch input3{
    case "+":
        for i in inputArray{
            emptyArr3 = emptyArr3 + num1
            emptyArr3 += i
        }
        break
    case "*":
        for i in inputArray{
            emptyArr3 = emptyArr3 + num1
            emptyArr3 *= i
        }
    default:
        print("Iunno")
    }
    return emptyArr3
}


switch choice1{
case "map":
    myMap(inputArray: intConvert, map: num1)
    print(emptyArr2)
    break
case "filter":
    myFilter(inputArray: intConvert, filter: (num1))
    print(emptyArr1)
    break
case "reduce":
    myReduce(inputArray: intConvert, reduce: (num1))
    print(emptyArr3)
    break
default:
    print("don't break my code")
}
