//
//  Integer+ExtensionTests.swift
//  CodeWarsTests
//
//  Created by Jaakko Kenttä on 28/01/2019.
//  Copyright © 2019 Jaakko Kenttä. All rights reserved.
//

import XCTest
@testable import CodeWars

class Integer_ExtensionTests: XCTestCase {
	
	// MARK: - Prime Factors Tests
	func test_returnPrimeFactors_for1_returnsZero() {
		let factors = PrimeFinder.findPrimeFactors(ofNumber: 1)
		XCTAssertEqual(factors, [:])
	}
	
	func test_returnPrimeFactors_returnSelf_WhenGivenPrime() {
		XCTAssertEqual(PrimeFinder.findPrimeFactors(ofNumber: 2), [2: 1])
		XCTAssertEqual(PrimeFinder.findPrimeFactors(ofNumber: 3), [3: 1])
		XCTAssertEqual(PrimeFinder.findPrimeFactors(ofNumber: 11), [11: 1])
	}

	func test_factorPrimes1() {
		var output = PrimeFinder.findPrimeFactors(ofNumber: 4)
		XCTAssertEqual(output, [2: 2])

		output = PrimeFinder.findPrimeFactors(ofNumber: 9)
		XCTAssertEqual(output, [3: 2])

		output = PrimeFinder.findPrimeFactors(ofNumber: 12)
		XCTAssertEqual(output, [2: 2, 3: 1])

		output = PrimeFinder.findPrimeFactors(ofNumber: 213)
		XCTAssertEqual(output, [3:1, 71:1])

		output = PrimeFinder.findPrimeFactors(ofNumber: 5040)
		XCTAssertEqual(output, [2: 4, 3: 2, 5:1, 7:1])
	}


	// MARK: - Find Common Prime Factors
	func test_commonFactors_with_1and1_shouldReturnEmptyArray() {
		var primeFactors = PrimeFinder.findCommonPrimeFactors(withNumber: 1, and: 1)
		XCTAssertEqual(primeFactors, [:])

		primeFactors = PrimeFinder.findCommonPrimeFactors(withNumber: 50, and: 1)
		XCTAssertEqual(primeFactors, [:])
	}

	func test_commonFactors_withValues() {
		
		var primeFactors = PrimeFinder.findCommonPrimeFactors(withNumber: 4, and: 2)
		XCTAssertEqual(primeFactors, [2: 1])
		
		primeFactors = PrimeFinder.findCommonPrimeFactors(withNumber: 3, and: 12)
		XCTAssertEqual(primeFactors, [3: 1])

		primeFactors = PrimeFinder.findCommonPrimeFactors(withNumber: 10, and: 10)
		XCTAssertEqual(primeFactors, [2: 1, 5: 1])
		
		primeFactors = PrimeFinder.findCommonPrimeFactors(withNumber: 120, and: 10)
		XCTAssertEqual(primeFactors, [2: 1, 5: 1])
	}
	
	func test_convert_FactorsToInt() {
		var number = PrimeFinder.convertFactorsToInt(withFactors: [2: 1])
		XCTAssertEqual(number, 2)
		
		number = PrimeFinder.convertFactorsToInt(withFactors: [5: 2])
		XCTAssertEqual(number, 25)
		
		number = PrimeFinder.convertFactorsToInt(withFactors: [2: 2, 5: 1, 11: 1])
		XCTAssertEqual(number, 220)
		
		number = PrimeFinder.convertFactorsToInt(withFactors: [2: 5, 9: 4, 11: 2])
		XCTAssertEqual(number, 25404192)
	}

}
