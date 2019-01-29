//
//  StepsInPrimes.swift
//  CodeWarsTests
//
//  Created by Jaakko Kenttä on 24/01/2019.
//  Copyright © 2019 Jaakko Kenttä. All rights reserved.
//

import XCTest
@testable import CodeWars

class StepsInPrimes: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	func testPrimeGeneration() {
		// Assert 0
		XCTAssertTrue(getPrimes(upTo: 0) == [])
		XCTAssertTrue(getPrimes(upTo: 1) == [])
		
		XCTAssertTrue(getPrimes(upTo: 10).contains(2))
	}
	
	func testIsPrime() {
		XCTAssertTrue(2.isPrime)
		XCTAssertTrue(3.isPrime)
		XCTAssertTrue(5.isPrime)
		XCTAssertTrue(7.isPrime)
		
		XCTAssertFalse(10.isPrime)
		XCTAssertFalse(100.isPrime)
		XCTAssertFalse(1.isPrime)
		XCTAssertFalse(0.isPrime)
	}
	
	
	static var allTests = [
		("step", testExample),
		]
	
	func testing(_ g: Int, _ m: Int, _ n: Int, _ expected: (Int, Int)?) {
		XCTAssert(step(g, m, n)! == expected!, "should return \(expected!)")
	}
	func testingNil(_ g: Int, _ m: Int, _ n: Int) {
		XCTAssert(step(g, m, n) == nil, "Should return nil")
	}
	
	func testExample() {
		testing(2,100,110, (101, 103))
		testing(4,100,110, (103, 107))
		testing(6,100,110, (101, 107))
		testing(8,300,400, (359, 367))
		testingNil(2,4900,4919)
		testingNil(1, 1, 1)
		testing(4, 130, 200, (163, 167))
	}
	
	func testFindNextPrimeNumber() {
		XCTAssertEqual((-1).findClosestPrimeToUp(), 2)
		XCTAssertEqual(2.findClosestPrimeToUp(), 2)
		
		XCTAssertEqual(5.findClosestPrimeToUp(), 5)
		XCTAssertEqual(10.findClosestPrimeToUp(), 11)
		XCTAssertEqual(1040.findClosestPrimeToUp(), 1049)
		XCTAssertEqual(3584.findClosestPrimeToUp(), 3593)
	}


}
