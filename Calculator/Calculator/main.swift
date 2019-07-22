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
//var counter = 3
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

//PART 1B and 1C
//import Foundation
//var operations: ([String: (Double, Double) -> Double]) = ["+": { $0 + $1 },
//                                                          "-": { $0 - $1 },
//                                                          "*": { $0 * $1 },
//                                                          "/": { $0 / $1 },]
//print("Please enter your 2 numbers and an operand of either +,-,*,/ or ? for minigame")
//
//var counter = 3
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

