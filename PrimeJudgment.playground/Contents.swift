//: Playground - noun: a place where people can play

import UIKit

func isPrime(_ n: Int) -> Bool {
    guard n != 1 else {
        return false
    }
    
    if n == 2 {
        return true
    }
    var i = 2
    let temp = sqrt(Double(n))
    while n % i != 0 {
        i += 1
        if Double(i) > temp {
            return true
        }
    }
    return false
}

//print(isPrime(999))



func isPrimeNumber(_ n: Int) -> Bool {
    guard n != 1 else {
        return false
    }
    if n == 2 { return true }
    if n % 2 == 0 { return false }
    let sqrtn = sqrt(Double(n))
    var i = 3
    var flag = true
    while Double(i) <= sqrtn {
        i += 1
        if n % i == 0 {
            flag = false
        }
    }
    return flag
}

//print(isPrimeNumber(2))
//print(isPrimeNumber(4))
//print(isPrimeNumber(5))
//print(isPrimeNumber(99))

//get all primes that specfied range
func allPrimesWithin(_ range: Int) ->[Int] {
    guard  range != 1 else {
        return []
    }
    var primes = [Int]()
    for i in 2..<range {
        if isPrimeNumber(i) {
            primes.append(i)
        }
    }
    return primes
}

func allPrimesSumWithin(_ range: Int) -> Int {
    guard range != 1 else {
        return 0
    }
    var sum = 0
    for i in 2...range {
        if isPrime(i) {
            sum += i
        }
    }
    return sum
}

func primesTotalWithin(_ range: Int) -> Int {
    guard range != 1 else {
        return 0
    }
    var total = 0
    for i in 2...range {
        if isPrime(i) {
            total += 1
        }
    }
    return total
}

print(allPrimesWithin(1))

//print(allPrimesSumWithin(100))
//print(primesTotalWithin(100))
































