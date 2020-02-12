//
//  HomeVC.swift
//  Profile
//
//  Created by Valeria Khristinina on 10/02/2020.
//  Copyright © 2020 Valeria Khristinina. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

	@IBOutlet var greetingLabel: UILabel!
	
	var greetingLabelText: String!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		greetingLabel.text = "Welcom, \(greetingLabelText ?? "Noname")"

        // Do any additional setup after loading the view.
    }
	@IBAction func logOut() {
		dismiss(animated: true)
	}
	

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
