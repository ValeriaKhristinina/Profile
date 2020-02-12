//
//  ViewController.swift
//  Profile
//
//  Created by Valeria Khristinina on 10/02/2020.
//  Copyright © 2020 Valeria Khristinina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var nameTextField: UITextField!
	@IBOutlet var passwordTextField: UITextField!
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}


	@IBAction func showAlertUserName() {
		showAlert(with: "Oops!", and: "Your name is Lera")
	}
	
	@IBAction func showAlertPassword() {
		showAlert(with: "Oops!", and: "Password is qwerty")
	}
	@IBAction func logIn() {
		if nameTextField.text == "Lera" && passwordTextField.text == "qwerty"{
			performSegue(withIdentifier: "tabBarControllerSegue", sender: nil)
		} else {
			showAlert(with: "😞", and: "Wrong name or password. Please try again")
		}
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let tabBarController = segue.destination as! UITabBarController
		let homeVC = tabBarController.viewControllers?.first as! HomeVC
		
		homeVC.greetingLabelText = nameTextField.text
		
		clearTextFields()
	}
	
	func clearTextFields() {
		nameTextField.text = ""
		passwordTextField.text = ""
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

