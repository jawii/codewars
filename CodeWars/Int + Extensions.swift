//
//  Int + Extensions.swift
//  CodeWars
//
//  Created by Jaakko Kenttä on 28/01/2019.
//  Copyright © 2019 Jaakko Kenttä. All rights reserved.
//

import Foundation

extension Int {
	func findClosestPrimeToUp() -> Int {
		guard self > 2 else {
			return 2
		}
		
		var numberToCheck = self
		while true {
			if numberToCheck.isPrime {
				return numberToCheck
			}
			numberToCheck += 1
		}
		
	}
	
	var isPrime: Bool {
		print("Asking for number \(self)")
		switch self {
		case 0, 1:
			return false
		case 2, 3, 5:
			return true
		default:
			for i in 2...Int(sqrt(Double(self))) {
				if self % i == 0 {
					return false
				}
			}
			return true
		}
	}
	
	func primeFactors() -> [Int] {
		if self.isPrime { return [self] }
		
		let primes = getPrimes(upTo: self)
		
		var returnValue = [Int]()
		var copy = self
		for prime in primes {
			while copy % prime == 0 {
				returnValue.append(prime)
				copy = copy / prime
			}
		}
		return returnValue
	}
	
	func findCommonPrimeFactors(with number: Int) -> [Int] {
		if number == 1 { return [1] }
		
		let factorSet1 = Set<Int>(self.primeFactors())
		let factorSet2 = Set<Int>(number.primeFactors())
		
		let newSet = factorSet1.intersection(factorSet2)
		
		return newSet.sorted()
	}
}
