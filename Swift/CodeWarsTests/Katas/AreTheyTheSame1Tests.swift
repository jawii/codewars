//
//  AreTheyTheSame1Tests.swift
//  CodeWarsTests
//
//  Created by Jaakko Kenttä on 25/01/2019.
//  Copyright © 2019 Jaakko Kenttä. All rights reserved.
//

import XCTest
@testable import CodeWars

class AreTheyTheSame1Tests: XCTestCase {

	func test_comparing_when_countIsNotEven() {
		
		let a = [1, 2]
		let b = [3, 2, 3]
		
		XCTAssertFalse(comp(a, b))
	}
	
	func test_comp_giveSameArrays() {
		let a = [2]
		let b = [2]
		
		XCTAssertFalse(comp(a, b))
	}
	
	func test_comp_withVariousSetups() {
		XCTAssertTrue(comp([1, 1], [1, 1]))
		
		XCTAssertTrue(comp([2,3], [4,9]))
		XCTAssertTrue(comp([3, 2], [4,9]))
	}
}
