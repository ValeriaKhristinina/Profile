//
//  ViewController.swift
//  Profile
//
//  Created by Valeria Khristinina on 10/02/2020.
//  Copyright © 2020 Valeria Khristinina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
	}


	@IBAction func showAlertUserName() {
		showAlert(with: "Oops!", and: "Your name is Lera")
	}
	
	@IBAction func showAlertPassword() {
		showAlert(with: "Oops!", and: "Password is qwerty")
	}
}

// MARK: - UIAlertController
extension ViewController {
	private func showAlert(with title: String, and message: String) {
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		let okAction = UIAlertAction(title: "OK", style: .default)
		alert.addAction(okAction)
		present(alert, animated: true)
	}
}

