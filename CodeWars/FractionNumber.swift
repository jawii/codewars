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
		
		let numeratorPrimeFactors = numerator.primeFactors()
		let denominatorPrimeFactors = denominator.primeFactors()
		
		let commonFactors = numerator.findCommonPrimeFactors(with: denominator)
		
		
		return FractionNumber(numerator: 0, denominator: 0)
	}

}
