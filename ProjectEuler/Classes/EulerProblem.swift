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

extension EulerProblem {
	func evaluate() -> Evaluation {
		let begin = clock()
		let result = self.run()
		let diff = Double(clock() - begin) / Double(CLOCKS_PER_SEC)
		
		return Evaluation(problem: self.number, result: result, elapsedTime: diff)
	}
}

struct Evaluation {
	let problem: Int
	let result: Int
	let elapsedTime: Double
}