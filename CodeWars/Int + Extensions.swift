//
//  Int + Extensions.swift
//  CodeWars
//
//  Created by Jaakko Kenttä on 28/01/2019.
//  Copyright © 2019 Jaakko Kenttä. All rights reserved.
//

import Foundation

extension Int {
	func findClosestPrimeToUp() -> Int {
		guard self > 2 else {
			return 2
		}
		
		var numberToCheck = self
		while true {
			if numberToCheck.isPrime {
				return numberToCheck
			}
			numberToCheck += 1
		}
		
	}
	
	var isPrime: Bool {
		print("Asking for number \(self)")
		switch self {
		case 0, 1:
			return false
		case 2, 3, 5:
			return true
		default:
			for i in 2...Int(sqrt(Double(self))) {
				if self % i == 0 {
					return false
				}
			}
			return true
		}
	}
}
