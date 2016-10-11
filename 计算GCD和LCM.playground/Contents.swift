//: Playground - noun: a place where people can play

import UIKit

//get gcd of two integer by recursive way
func recursive(_ a: Int, b: Int) -> Int{
    let remainder = a % b
    if remainder == 0 {
        return b
    } else {
        return gcd(b, b: remainder)
    }
}
//get gcd of two integer by nonrecursive way
func nonrecursive(_ a: Int, b: Int) -> Int {
    var remainder = min(a, b)
    var temp = 0
    var b = max(a, b)
    while remainder != 0 {
        temp = b
        b = remainder
        remainder = temp % b
    }
    return b
}

func gcd(_ a: Int, b: Int, isRecursive: Bool = true) -> Int {
    
    if isRecursive {
        return recursive(a, b: b)
    } else {
        return nonrecursive(a, b: b)
    }
}

//get lcm of two integer
func lcm(_ a: Int, b: Int) ->Int {
    return a * b / gcd(a, b: b)
}

gcd(3, b: 9, isRecursive: false)

gcd(4, b: 7, isRecursive: true)

lcm(3, b: 9)








