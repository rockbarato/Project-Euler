//
//  Problem-1.swift
//  ProjectEuler
//
//  Created by Felix Ayala on 8/29/16.
//  Copyright © 2016 Felix Ayala. All rights reserved.
//

import Foundation

/**
	Problem 1: Multiples of 3 and 5

	If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

	Find the sum of all the multiples of 3 or 5 below 1000.
*/
class Problem1: EulerProblem {
	
	let number: Int = 1
	
	func run() -> Int {
		
		var sum = 0
		
		for i in 1..<1000 {
			if i % 3 == 0 || i % 5 == 0 {
				sum += i
			}
		}
		
		return sum
	}
	
}
