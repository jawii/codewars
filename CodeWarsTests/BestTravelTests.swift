//
//  BestTravelTests.swift
//  CodeWarsTests
//
//  Created by Jaakko Kenttä on 10/02/2019.
//  Copyright © 2019 Jaakko Kenttä. All rights reserved.
//

import XCTest
@testable import CodeWars

class BestTravelTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	func test_bestSum_with_nonValidValues() {
		XCTAssertEqual(chooseBestSum(-1, 10, [10]), -1)
		XCTAssertEqual(chooseBestSum(0, 0, [10]), -1)
		XCTAssertEqual(chooseBestSum(10, 10, []), -1)
	}
	
	func test_bestSum_withSimpleValues() {
		var t = 4
		var k = 1
		var ls = [1, 2, 4]
		var outPut = chooseBestSum(t, k, ls)
		XCTAssertEqual(outPut, 4)
		
		t = 10
		k = 1
		ls = [10, 1, 2, 4]
		outPut = chooseBestSum(t, k, ls)
		XCTAssertEqual(outPut, 10)
	}
	
	func test_bestSum_withImpossibleValuea() {
		var t = 163
		var k = 3
		var ls = [50]
		var outPut = chooseBestSum(t, k, ls)
		XCTAssertEqual(outPut, -1)
		
		t = 120
		k = 1
		ls = [121, 122, 234]
		outPut = chooseBestSum(t, k, ls)
		XCTAssertEqual(outPut, -1)
	}
	
	func test_bestSum_withVariousValues() {
		let t = 3
		let k = 2
		let ls = [1, 1, 2]
		let outPut = chooseBestSum(t, k, ls)
		XCTAssertEqual(outPut, 3)
	}


}
