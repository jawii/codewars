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
		XCTAssertEqual(1.primeFactors(), [])
	}
	
	func test_returnPrimeFactors_returnSelf_WhenGivenPrime() {
		XCTAssertEqual(2.primeFactors(), [2])
		XCTAssertEqual(3.primeFactors(), [3])
		XCTAssertEqual(11.primeFactors(), [11])
	}
	
	func test_factorPrimes1() {
		var output = 4.primeFactors()
		XCTAssertEqual(output, [2, 2])
		
		output = 9.primeFactors()
		XCTAssertEqual(output, [3, 3])
		
		output = 12.primeFactors()
		XCTAssertEqual(output, [2, 2, 3])
		
		output = 213.primeFactors()
		XCTAssertEqual(output, [3, 71])
		
		output = 5040.primeFactors()
		XCTAssertEqual(output, [2, 2, 2, 2, 3, 3, 5, 7])
	}
	
	
	// MARK: - Find Common Prime Factors
	func test_commonFactors_with_1and1_shouldReturn1() {
		var factors = 1.findCommonPrimeFactors(with: 1)
		XCTAssertEqual(factors, [1])
		
		factors = 50.findCommonPrimeFactors(with: 1)
		XCTAssertEqual(factors, [1])
	}
	
	func test_commonFactors_withValues() {
		var factors = 4.findCommonPrimeFactors(with: 2)
		XCTAssertEqual(factors, [2])
		
		factors = 3.findCommonPrimeFactors(with: 12)
		XCTAssertEqual(factors, [3])
	}

}
