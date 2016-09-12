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
	
	class func run(complete:(() -> ())?) {
		dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) {
			
			for problem in problemList {
				let evaluation: Evaluation = problem.evaluate()
				print("Problem #\(evaluation.problem): \(evaluation.result) (\(evaluation.elapsedTime))")
			}
			
			dispatch_async(dispatch_get_main_queue()) {
				complete?()
			}
		}
		
		
	}
	
	class func register() {
//		problemList.append(Problem1())
//		problemList.append(Problem2())
//		problemList.append(Problem3())
//		problemList.append(Problem4())
		problemList.append(Problem5())
	}
}