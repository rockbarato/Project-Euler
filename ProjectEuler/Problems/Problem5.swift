//
//  Problem5.swift
//  ProjectEuler
//
//  Created by Felix Ayala on 9/12/16.
//  Copyright © 2016 Felix Ayala. All rights reserved.
//

import Foundation

/**
	Problem 5: Smallest multiple

	2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

	What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
*/
class Problem5: EulerProblem {
	
	let number: Int = 5
	
	func run() -> Int {
		
		let start = 11
		let end = 20
		
		var number = end
		var i = 0
		
		repeat {
			
			for j in start...end {
				if (number % j == 0) {
					i += 1
				} else {
					break;
				}
			}
			
			if (i != (end - start + 1)) {
				i = 0
				number += 1
			}
		} while(i != (end - start + 1))
		
		return number
	}
	
}
