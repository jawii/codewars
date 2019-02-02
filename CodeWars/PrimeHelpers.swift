//
//  PrimeHelpers.swift
//  CodeWars
//
//  Created by Jaakko Kenttä on 28/01/2019.
//  Copyright © 2019 Jaakko Kenttä. All rights reserved.
//

import Foundation


var PRIMES = [Int]()
var PRIMESLOOKUP = [Int: [Int: Int]]()

class PrimeFinder {
	
	static func getPrimes(upTo max: Int) -> [Int] {
		guard max >= 2 else { return [] }
		
		if let currentMax = PRIMES.max(), currentMax > max {
			return PRIMES
		}
		
		var sieve = Array.init(repeating: true, count: max)
		
		sieve[0] = false
		sieve[1] = false
		for number in 2 ..< max {
			if sieve[number] == true {
				for multiple in stride(from: number * number, to: sieve.count, by: number) {
					sieve[multiple] = false
				}
			}
		}
		let primes: [Int] = sieve.enumerated().compactMap { $1 == true ? $0 : nil }
		
		PRIMES = primes
		return primes
	}
	
	static func findPrimeFactors(ofNumber number: Int) -> [Int: Int] {
		if number.isPrime { return [number: 1] }
		
		if let value = PRIMESLOOKUP[number] {
			return value
		}
		
		let primes = PrimeFinder.getPrimes(upTo: number)
		
		var returnValue = [Int: Int]()
		var copy = number
		for prime in primes {
			while copy % prime == 0 {
				let oldValue = returnValue[prime, default: 0]
				returnValue[prime] = oldValue + 1
				copy = copy / prime
			}
		}
		
		PRIMESLOOKUP[number] = returnValue
		
		return returnValue
	}
	
	
	static func findCommonPrimeFactors(withNumber number1: Int, and number2: Int) -> [Int: Int] {
		
		let number1PrimeFactors = findPrimeFactors(ofNumber: number1)
		let number2PrimeFactors = findPrimeFactors(ofNumber: number2)
		
		var commonFactors = Dictionary<Int, Int>()
		
		for (key, value) in number1PrimeFactors {
			if number2PrimeFactors.keys.contains(key) {
				let count = min(number2PrimeFactors[key]!, value)
				commonFactors[key] = count
			}
		}
		return commonFactors
	}
	
	static func convertFactorsToInt(withFactors factors: [Int: Int]) -> Int {
		var returnValue = 1
		for (key, value) in factors {
			let powBase = Decimal(floatLiteral: Double(key))
			returnValue *= NSDecimalNumber(decimal: pow(powBase, value)).intValue
		}
		
		return returnValue
	}
}


