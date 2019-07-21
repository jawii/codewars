//
//  WriteNumberInExpandedFormTests.swift
//  CodeWarsTests
//
//  Created by Jaakko Kenttä on 26/01/2019.
//  Copyright © 2019 Jaakko Kenttä. All rights reserved.
//

import XCTest
@testable import CodeWars

class WriteNumberInExpandedFormTests: XCTestCase {

    override func setUp() {
    }

    override func tearDown() {

    }
	
	func test_checkThatWilLFail_withZeroOrNegative() {
		XCTAssertNil(expandedForm(0))
		XCTAssertNil(expandedForm(-1))
	}
	
	func test_expandedWithInput1SizeNumber_shouldReturnStringFromThatNumber() {
		let input = 1
		let excpectedOutput = "1"
		let outPut = expandedForm(input)
		
		XCTAssertEqual(outPut, excpectedOutput)
	}
	
	func test_expandedWithInput1SizeNumber_shouldReturnStringFromThatNumber2() {
		let input = 2
		let excpectedOutput = "2"
		let outPut = expandedForm(input)
		
		XCTAssertEqual(outPut, excpectedOutput, "Should return 2")
	}
	
	func test_expandedWithInput_twoSizeNumber_shouldReturnStringFromThatNumber() {
		let input = 10
		let excpectedOutput = "10"
		let outPut = expandedForm(input)
		
		XCTAssertEqual(outPut, excpectedOutput, "Should return 10")
	}
	
	func test_expandedWithInput_twoSizeNumber_shouldReturnStringFromThatNumber2() {
		let input = 12
		let excpectedOutput = "10 + 2"
		let outPut = expandedForm(input)
		
		XCTAssertEqual(outPut, excpectedOutput, "Should return 12")
	}
	
	func test_expandedWithInput_twoSizeNumber_shouldReturnStringFromThatNumber3() {
		let input = 29
		let excpectedOutput = "20 + 9"
		let outPut = expandedForm(input)
		
		XCTAssertEqual(outPut, excpectedOutput, "Should return 29")
	}
	
	func test_expandedWithInput_threeSizeNumber_shouldReturnStringFromThatNumber() {
		let input = 299
		let excpectedOutput = "200 + 90 + 9"
		let outPut = expandedForm(input)
		
		XCTAssertEqual(outPut, excpectedOutput, "Not tranfsforming to right value")
	}
	
	func test_expandedWithInput_threeSizeNumber_shouldReturnStringFromThatNumber2() {
		let input = 100
		let excpectedOutput = "100"
		let outPut = expandedForm(input)
		
		XCTAssertEqual(outPut, excpectedOutput, "Not tranfsforming to right value")
	}
	
	func test_expandedWithInput_fourSizeNumber_shouldReturnStringFromThatNumber() {
		let input = 1000
		let excpectedOutput = "1000"
		let outPut = expandedForm(input)
		
		XCTAssertEqual(outPut, excpectedOutput, "Not tranfsforming to right value")
	}
	
	func test_expandedWithInput_fourSizeNumber_shouldReturnStringFromThatNumber2() {
		let input = 1001
		let excpectedOutput = "1000 + 1"
		let outPut = expandedForm(input)
		
		XCTAssertEqual(outPut, excpectedOutput, "Not tranfsforming to right value")
	}

	
}
