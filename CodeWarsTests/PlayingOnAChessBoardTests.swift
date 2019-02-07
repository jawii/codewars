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

	
	func test_game_grid() {
		var value = ChessFractionGrid.valueFor(row: 0, column: 0)
		XCTAssertEqual(value.numerator, 1)
		XCTAssertEqual(value.denominator, 2)
		
		value = ChessFractionGrid.valueFor(row: 0, column: 1)
		XCTAssertEqual(value.numerator, 2)
		XCTAssertEqual(value.denominator, 3)
		
		value = ChessFractionGrid.valueFor(row: 1, column: 0)
		XCTAssertEqual(value.numerator, 1)
		XCTAssertEqual(value.denominator, 3)
		
		value = ChessFractionGrid.valueFor(row: 1, column: 1)
		XCTAssertEqual(value.numerator, 2)
		XCTAssertEqual(value.denominator, 4)
		
		value = ChessFractionGrid.valueFor(row: 2, column: 2)
		XCTAssertEqual(value.numerator, 3)
		XCTAssertEqual(value.denominator, 6)
	}
	
	func test_game_with_2() {
		XCTAssertEqual(game(2), "[2]")
		XCTAssertEqual(game(3), "[9, 2]")
		XCTAssertEqual(game(4), "[8]")
	}
	
	func test_performance_with204() {
		XCTAssertEqual(game(204), "[20808]")
		measure {
			_ = game(204)
		}
	}
	
	func test_performance_with807() {
		XCTAssertEqual(game(807), "[651249, 2]")
		measure {
			_ = game(807)
		}
	}
	
	func test_performance_with1808() {
		XCTAssertEqual(game(1808), "[1634432]")
		measure {
			_ = game(1808)
		}
	}
}
