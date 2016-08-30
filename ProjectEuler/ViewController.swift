//
//  ViewController.swift
//  ProjectEuler
//
//  Created by Felix Ayala on 8/24/16.
//  Copyright © 2016 Felix Ayala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		EulerProject.register()
		EulerProject.run()
		
	}


}

