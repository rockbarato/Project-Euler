//
//  Problem.swift
//  ProjectEuler
//
//  Created by Felix Ayala on 8/29/16.
//  Copyright © 2016 Felix Ayala. All rights reserved.
//

import Foundation

protocol EulerProblem {
	
	var number: Int { get }
	
	func run() -> Int
}