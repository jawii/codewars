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
	
	var stringValue: String {
		return "\(numerator)/\(denominator)"
	}
	var value: Double? {
		if denominator == 0 { return nil }
		return Double(numerator)/Double(denominator)
	}
	
	func getSimplifiedFraction() -> FractionNumber {
		
		var numeratorPrimeFactors = PrimeFinder.findPrimeFactors(ofNumber: numerator)
		var denominatorPrimeFactors = PrimeFinder.findPrimeFactors(ofNumber: denominator)
		
		let commonFactors = PrimeFinder.findCommonPrimeFactors(withNumber: numerator, and: denominator)
		
		for (key, value) in commonFactors {
			numeratorPrimeFactors[key] = numeratorPrimeFactors[key]! - value
			denominatorPrimeFactors[key] = denominatorPrimeFactors[key]! - value
		}
		
		
		return FractionNumber(numerator: 0, denominator: 0)
	}

}
