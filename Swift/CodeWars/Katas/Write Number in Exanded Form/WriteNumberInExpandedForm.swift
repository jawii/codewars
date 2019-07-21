//
//  Solution.swift
//  CodeWars
//
//  Created by Jaakko Kenttä on 26/01/2019.
//  Copyright © 2019 Jaakko Kenttä. All rights reserved.
//

import Foundation

/*
You will be given a number and you will need to return it as a string in Expanded Form. For example:

expandedForm 12    -- Should return '10 + 2'
expandedForm 42    -- Should return '40 + 2'
expandedForm 70304 -- Should return '70000 + 300 + 4'
NOTE: All numbers will be whole numbers greater than 0.
*/

func expandedForm(_ num: Int) -> String? {
	guard num > 0 else { return nil }
	
	let numberAsString = String(num)
	var returnValue = ""
	
	for (index, number) in numberAsString.enumerated() {
		
		if Int(String(number)) == 0 {
			continue
		}
		
		let tenth = NSDecimalNumber(decimal: pow(10, numberAsString.count - (index + 1))).intValue
	
		returnValue += "\(Int(String(number))! * tenth) + "
	}
	// remove last digits from the end
	returnValue = String(returnValue.dropLast().dropLast().dropLast())
	
	return returnValue
}
