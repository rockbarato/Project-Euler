//
//  Problem6.swift
//  ProjectEuler
//
//  Created by Felix Ayala on 9/23/16.
//  Copyright © 2016 Felix Ayala. All rights reserved.
//

import Foundation

/**
	Problem 6: Sum square difference

	The sum of the squares of the first ten natural numbers is,

	1^2 + 2^2 + ... + 10^2 = 385
	The square of the sum of the first ten natural numbers is,

	(1 + 2 + ... + 10)^2 = 55^2 = 3025
	Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

	Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
*/
class Problem6: EulerProblem {
	
	let number: Int = 0
	
	func run() -> Int {
		
		var sumOfSquares = 0
		var sum = 0
		
		let end = 100
		
		for i in 1...end {
			sumOfSquares += (i ^^ 2)
			sum += i
		}
		
		let squareOfSum = sum ^^ 2
		
		let diff = squareOfSum - sumOfSquares
		
		return diff
	}
	
}
