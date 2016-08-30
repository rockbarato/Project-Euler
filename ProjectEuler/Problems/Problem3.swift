//
//  Problem3.swift
//  ProjectEuler
//
//  Created by Felix Ayala on 8/30/16.
//  Copyright © 2016 Felix Ayala. All rights reserved.
//

import Foundation

/**
	Problem 3: Largest prime factor

	The prime factors of 13195 are 5, 7, 13 and 29.

	What is the largest prime factor of the number 600851475143 ?
*/
class Problem3: EulerProblem {
	
	let number: Int = 3
	
	func run() -> Int {
		
		var n = 600851475143
		var quotient = 2
		
		while quotient <= n {
			if n % quotient == 0 {
				n /= quotient
			} else {
				quotient += 1
			}
		}
		
		return quotient
	}
	
}
