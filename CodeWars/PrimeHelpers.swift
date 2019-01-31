//
//  PrimeHelpers.swift
//  CodeWars
//
//  Created by Jaakko Kenttä on 28/01/2019.
//  Copyright © 2019 Jaakko Kenttä. All rights reserved.
//

import Foundation


var PRIMES = [Int]()

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
		return returnValue
	}
	
	
	//	func findCommonPrimeFactors(with number: Int) -> [Int:Int] {
	//		if number == 1 { return [1] }
	//
	//		let factorSet1 =
	//		let factorSet2 = Set<Int>(number.primeFactors())
	//
	//		let newSet = factorSet1.intersection(factorSet2)
	//
	//		return newSet.sorted()
	//	}
}


