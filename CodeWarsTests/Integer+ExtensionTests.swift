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
//
//
//	// MARK: - Find Common Prime Factors
//	func test_commonFactors_with_1and1_shouldReturn1() {
//		var factors = 1.findCommonPrimeFactors(with: 1)
//		XCTAssertEqual(factors, [1])
//
//		factors = 50.findCommonPrimeFactors(with: 1)
//		XCTAssertEqual(factors, [1])
//	}
//
//	func test_commonFactors_withValues() {
//		var factors = 4.findCommonPrimeFactors(with: 2)
//		XCTAssertEqual(factors, [2])
//
//		factors = 3.findCommonPrimeFactors(with: 12)
//		XCTAssertEqual(factors, [3])
//
//		factors = 10.findCommonPrimeFactors(with: 10)
//		XCTAssertEqual(factors, [2, 5])
//
//		factors = 10.findCommonPrimeFactors(with: 120)
//		XCTAssertEqual(factors, [2, 5])
//	}

}
