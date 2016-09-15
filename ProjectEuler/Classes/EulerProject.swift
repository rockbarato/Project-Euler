//
//  Euler.swift
//  ProjectEuler
//
//  Created by Felix Ayala on 8/29/16.
//  Copyright © 2016 Felix Ayala. All rights reserved.
//

import Foundation

private var problemList: [EulerProblem] = []

class EulerProject {
	
	class func run() {
		EulerProject.run(nil)
	}
	
	class func run(_ complete:(() -> ())?) {
		DispatchQueue.global(qos: .background).async {
			
			for problem in problemList {
				let evaluation: Evaluation = problem.evaluate()
				print("Problem #\(evaluation.problem): \(evaluation.result) (\(evaluation.elapsedTime))")
			}
			
			DispatchQueue.main.async {
				complete?()
			}
		}
		
		
	}
	
	class func register() {
//		problemList.append(Problem1())
//		problemList.append(Problem2())
//		problemList.append(Problem3())
//		problemList.append(Problem4())
//		problemList.append(Problem5())
		problemList.append(Problem6())
	}
}
