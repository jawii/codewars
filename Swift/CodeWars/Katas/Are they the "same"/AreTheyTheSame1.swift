//
//  AreTheyTheSame1.swift
//  CodeWars
//
//  Created by Jaakko Kenttä on 25/01/2019.
//  Copyright © 2019 Jaakko Kenttä. All rights reserved.
//

import Foundation


func comp(_ a: [Int], _ b: [Int]) -> Bool {
	// your code
	guard a.count == b.count else { return false }
	
	return a.map { $0 * $0 }.sorted() == b.sorted()
}
