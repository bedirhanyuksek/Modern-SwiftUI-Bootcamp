//
//  main.swift
//  Lesson1.2
//
//  Created by Bedirhan Yüksek on 20.08.2025.
//

import Foundation

func calculator(num1: Double, num2: Double, operation: String) -> Double?{
    switch operation{
    case "+":
        return num1 + num2
    case "-":
        return num1 - num2
    case "*":
        return num1 * num2
    case "/":
        if(num2 != 0){
            return num1 / num2
        }else{
            return nil
        }
    default :
        return nil
    }
}

print("5 + 3 =",calculator(num1: 5, num2: 3, operation: "+") ?? "Hata")
print("10 - 7 =",calculator(num1: 10, num2: 7, operation: "-") ?? "Hata")
print("6 * 2 =",calculator(num1: 6, num2: 2, operation: "*") ?? "Hata")
print("8 / 4 =",calculator(num1: 8, num2: 4, operation: "/") ?? "Hata")

let numbers = [9,20,8,7,15,5,33,4,12]

let filtered = numbers.filter { $0 > 10 }
print("10'dan büyükler:", filtered)

let sorted = numbers.sorted { $0 < $1 }
print("Sıralı:", sorted)

