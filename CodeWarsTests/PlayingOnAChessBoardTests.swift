//
//  PlayingOnAChessBoardTests.swift
//  CodeWarsTests
//
//  Created by Jaakko Kenttä on 27/01/2019.
//  Copyright © 2019 Jaakko Kenttä. All rights reserved.
//

import XCTest
@testable import CodeWars

class PlayingOnAChessBoardTests: XCTestCase {

	func test_simplifyFraction_1And2_givesSame() {
		let input1 = 1
		let input2 = 2
		let expectedOutPut = "[1,2]"
		let output = simplifyFraction(input1, input2)
		XCTAssertEqual(expectedOutPut, output)
	}
	
//	func test_simplifyFraction_2And4_gives12() {
//		let input1 = 2
//		let input2 = 4
//		let expectedOutPut = "[1,2]"
//		let output = simplifyFraction(input1, input2)
//		XCTAssertEqual(expectedOutPut, output)
//	}
}
