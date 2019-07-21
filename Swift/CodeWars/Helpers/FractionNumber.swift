//
//  FractionNumber.swift
//  CodeWars
//
//  Created by Jaakko Kenttä on 30/01/2019.
//  Copyright © 2019 Jaakko Kenttä. All rights reserved.
//

import Foundation

struct FractionNumber: Equatable {
	var numerator: Int
	var denominator: Int
	
	init(numerator: Int, denominator: Int) {
		self.numerator = numerator
		self.denominator = denominator
	}
	
	
	var stringValue: String {
		return "\(numerator)/\(denominator)"
	}
	var value: Double? {
		if denominator == 0 { return nil }
		return Double(numerator)/Double(denominator)
	}
	
	static func == (lhs: FractionNumber, rhs: FractionNumber) -> Bool {
		return
			lhs.numerator == rhs.numerator &&
				lhs.denominator == rhs.denominator 
	}
	
	func getSimplifiedFraction() -> FractionNumber {
		
		var numeratorPrimeFactors = PrimeFinder.findPrimeFactors(ofNumber: numerator)
		var denominatorPrimeFactors = PrimeFinder.findPrimeFactors(ofNumber: denominator)
		
		let commonFactors = PrimeFinder.findCommonPrimeFactors(withNumber: numerator, and: denominator)
		
		for (key, value) in commonFactors {
			numeratorPrimeFactors[key] = numeratorPrimeFactors[key]! - value
			denominatorPrimeFactors[key] = denominatorPrimeFactors[key]! - value
		}
		
		return FractionNumber(
			numerator: PrimeFinder.convertFactorsToInt(withFactors: numeratorPrimeFactors),
			denominator: PrimeFinder.convertFactorsToInt(withFactors: denominatorPrimeFactors))
	}
	
	func adding(_ fractionNumber: FractionNumber, simplify: Bool = true) -> FractionNumber {
		
		if fractionNumber.numerator == 0 { return self }
		
		if self.denominator == fractionNumber.denominator {
			let returnFraction =  FractionNumber(numerator: self.numerator + fractionNumber.numerator, denominator: self.denominator)
			if simplify {
				return returnFraction.getSimplifiedFraction()
			} else {
				return returnFraction
			}
		}
		
		// get the greates commond divisors of denominators
		let commodPrimeFactors = PrimeFinder.findCommonPrimeFactors(withNumber: self.denominator, and: fractionNumber.denominator)
		let gcd = PrimeFinder.convertFactorsToInt(withFactors: commodPrimeFactors)
		let lcm = self.denominator * fractionNumber.denominator / gcd
		
		var coeff = lcm / self.denominator
		let newFraction = FractionNumber(numerator: self.numerator * coeff,
										 denominator: self.denominator * coeff)
		
		coeff = lcm / fractionNumber.denominator
		let otherNew = FractionNumber(numerator: fractionNumber.numerator * coeff,
									  denominator: fractionNumber.denominator * coeff)
		
		return newFraction.adding(otherNew, simplify: simplify)
	}

}
