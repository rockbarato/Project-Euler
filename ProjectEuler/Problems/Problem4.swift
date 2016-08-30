//
//  Problem4.swift
//  ProjectEuler
//
//  Created by Felix Ayala on 8/30/16.
//  Copyright © 2016 Felix Ayala. All rights reserved.
//

import Foundation

/**
	Problem 4: Largest palindrome product

	A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

	Find the largest palindrome made from the product of two 3-digit numbers.
*/
class Problem4: EulerProblem {
	
	let number: Int = 4
	
	func run() -> Int {
		
		let start = 100
		let end = 1000
		var auxStart = start
		
		var largest = 0
		
		for i in start..<end {
			for j in auxStart..<end {
				let result = i * j
				
				if isPalindrome(result) {
					largest = result > largest ? result : largest
				}
			}
			
			auxStart += 1
		}
		
		return largest
	}
	
	func isPalindrome(number: Int) -> Bool {
		let string = String(number)
		
		return isPalindrome(string)
	}
	
	func isPalindrome(text: String) -> Bool {
		let chars: [Character] = text.characters.reverse()
		
		let strings: [String] = chars.flatMap { (character: Character) -> String? in
			return String(character)
		}
		
		let reverse = strings.joinWithSeparator("")
		
		return reverse == text
	}
	
}
