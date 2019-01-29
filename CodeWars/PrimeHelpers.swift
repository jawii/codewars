//
//  PrimeHelpers.swift
//  CodeWars
//
//  Created by Jaakko Kenttä on 28/01/2019.
//  Copyright © 2019 Jaakko Kenttä. All rights reserved.
//

import Foundation


var PRIMES = [Int]()

func getPrimes(upTo max: Int) -> [Int] {
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
