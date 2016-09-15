//
//  Operators.swift
//  ProjectEuler
//
//  Created by Felix Ayala on 9/23/16.
//  Copyright © 2016 Felix Ayala. All rights reserved.
//

import Foundation

// http://stackoverflow.com/questions/24196689/how-to-get-the-power-of-some-integer-in-swift-language
precedencegroup PowerPrecedence {
		higherThan: MultiplicationPrecedence
}

infix operator ^^ : PowerPrecedence

func ^^ (radix: Int, power: Int) -> Int {
	return Int(pow(Double(radix), Double(power)))
}
