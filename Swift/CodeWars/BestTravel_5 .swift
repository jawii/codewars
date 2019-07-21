//
//  BestTravel_5 .swift
//  CodeWars
//
//  Created by Jaakko Kenttä on 10/02/2019.
//  Copyright © 2019 Jaakko Kenttä. All rights reserved.
//
import Foundation

/*
John and Mary want to travel between a few towns A, B, C ... Mary has on a sheet of paper a list of distances between these towns. ls = [50, 55, 57, 58, 60]. John is tired of driving and he says to Mary that he doesn't want to drive more than t = 174 miles and he will visit only 3 towns.

Which distances, hence which towns, they will choose so that the sum of the distances is the biggest possible

to please Mary and John- ?
Example:

With list ls and 3 towns to visit they can make a choice between: [50,55,57],[50,55,58],[50,55,60],[50,57,58],[50,57,60],[50,58,60],[55,57,58],[55,57,60],[55,58,60],[57,58,60].

The sums of distances are then: 162, 163, 165, 165, 167, 168, 170, 172, 173, 175.

The biggest possible sum taking a limit of 174 into account is then 173 and the distances of the 3 corresponding towns is [55, 58, 60].

The function chooseBestSum (or choose_best_sum or ... depending on the language) will take as parameters t (maximum sum of distances, integer >= 0), k (number of towns to visit, k >= 1) and ls (list of distances, all distances are positive or null integers and this list has at least one element). The function returns the "best" sum ie the biggest possible sum of k distances less than or equal to the given limit t, if that sum exists, or otherwise nil, null, None, Nothing, depending on the language. With C++, C, Rust, Swift, Go, Kotlin return -1.

Examples:

ts = [50, 55, 56, 57, 58] choose_best_sum(163, 3, ts) -> 163

xs = [50] choose_best_sum(163, 3, xs) -> nil (or null or ... or -1 (C++, C, Rust, Swift, Go)

ys = [91, 74, 73, 85, 73, 81, 87] choose_best_sum(230, 3, ys) -> 228
*/


/// BestSum
///
/// - Parameters:
///   - t: maximum sum of distances >= 0
///   - k: number of selections, k >= 1
///   - ls: list of distances
/// - Returns: Best possible sum near to t with k selections from list
func chooseBestSum(_ t: Int, _ k: Int, _ ls: [Int]) -> Int {
	// Non valid values check
	guard t >= 0, k >= 1, !ls.isEmpty else {
		return -1
	}
	// Return t if k == 1 and list containts that item
	if k == 1 && ls.contains(t) {
		return t
	}
	
	// If list has less numbers than t , return -1
	if ls.count <= k { return -1 }
	
	// If list has only greater numbers than t, return - 1
	if (ls.filter { $0 <= t }).isEmpty {
		return -1
	}
	
	// Remove all over t
	var list = ls.filter { $0 <= t }
	
	// keep sum
	var sum = 0
	var selectionsCount = 0
	
	while selectionsCount <= k && !list.isEmpty {
		// Find smallest item and substract that from eveyone else
		let smallest = list.min()!
		sum += smallest
		list = ls.map { $0 - smallest }.filter { $0 > 0 }
		
		// Check if you get exact match
		for item in list {
			if sum + item + smallest == t && selectionsCount == k - 2 {
				return t
			}
		}
		selectionsCount += 1
	}
	
	sum += list.min()!
	selectionsCount += 1
	
	return sum
}

