//
//  ViewController.swift
//  ProjectEuler
//
//  Created by Felix Ayala on 8/24/16.
//  Copyright © 2016 Felix Ayala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	let activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView.init(activityIndicatorStyle: .gray)

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		startLoader()
		EulerProject.register()
		EulerProject.run {
			self.stopLoader()
			print("fug")
		}
	}

	func startLoader() {
		activityIndicator.center = self.view.center
		activityIndicator.startAnimating()
		self.view.addSubview(activityIndicator)
	}
	
	func stopLoader() {
		activityIndicator.stopAnimating()
		activityIndicator.removeFromSuperview()
	}

}

