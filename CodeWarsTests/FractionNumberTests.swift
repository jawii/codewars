//
//  FractionNumberTests.swift
//  CodeWarsTests
//
//  Created by Jaakko Kenttä on 30/01/2019.
//  Copyright © 2019 Jaakko Kenttä. All rights reserved.
//

import XCTest
@testable import CodeWars

class FractionNumberTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	func test_fraction_init() {
		let _ = FractionNumber(numerator: 2, denominator: 4)
	}
	
	func test_fraction_stringValue() {
		let fraction = FractionNumber(numerator: 2, denominator: 4)
		let stringValue = fraction.stringValue
		XCTAssertEqual(stringValue, "2/4")
	}
	
	func test_fraction_doubleValue() {
		var fraction = FractionNumber(numerator: 4, denominator: 4)
		var value = fraction.value
		XCTAssertEqual(value, 1)
		
		fraction = FractionNumber(numerator: 2, denominator: 5)
		value = fraction.value
		XCTAssertEqual(value, 2/5)
	}
	
	func test_fraction_valueIsNil_whenDenominatorZero() {
		var fraction = FractionNumber(numerator: 1, denominator: 0)
		XCTAssertEqual(fraction.value, nil)
		
		fraction = FractionNumber(numerator: -1, denominator: 0)
		XCTAssertEqual(fraction.value, nil)
	}
	
//	func test_fraction_simplifyValues() {
//		var fraction = FractionNumber(numerator: 2, denominator: 4)
//		var simplified = fraction.getSimplifiedFraction()
//		var excpectedOutPut = FractionNumber(numerator: 1, denominator: 2)
//		XCTAssertEqual(simplified, excpectedOutPut)
//	}
}
