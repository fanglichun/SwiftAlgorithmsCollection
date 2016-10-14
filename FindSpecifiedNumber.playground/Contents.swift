//: Playground - noun: a place where people can play

import UIKit

func findSpecifiedNumber(_ array1: [Int], _ array2: [Int]) -> Int {
    var sum = array1.reduce(0, {
        $0 + $1
    })
    for item in array2 {
        sum -= item
    }
    return sum
}

func findSpecifiedNumber1(_ array1: [Int], _ array2: [Int]) -> Int {
    var dict: [Int: Int] = [:]
    array1.forEach {
        dict.updateValue(0, forKey: $0)
    }
    array2.forEach {
        dict.updateValue(1, forKey: $0)
    }
    let number = dict.values.filter{ $0 == 0 }.first
    for (key, value) in dict {
        if value == number {
            return key
        }
    }
    return 0
}

func findSpecifiedNumber2(_ array: [Int]) -> Int {
    let sortedArray = array.sorted { $0  > $1
    }
    for i in 0..<sortedArray.count {
        if sortedArray[i] - sortedArray[i + 1] != 1 {
            return sortedArray[i] - 1
        }
    }
    
    return 0
}
/* 
 一个无序数组里面有n-1 个不重复正整数，范围从1~n,维度缺少一个整数，如何找出这个缺失的整数
 */
let array1 = [1, 2, 3, 4, 5 ,6, 7, 8, 9, 0]
let array2 =  [2, 1, 3, 4, 6, 7, 8, 9, 0]

print(findSpecifiedNumber(array1, array2))

print(findSpecifiedNumber1(array1, array2))

print(findSpecifiedNumber2(array2))



