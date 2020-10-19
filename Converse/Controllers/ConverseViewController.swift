//
//  ViewController.swift
//  Converse
//
//  Created by Jered Leisey on 10/12/20.
//

import UIKit

class ConverseViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		view.backgroundColor = .red
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		
		let isLoggedIn = UserDefaults.standard.bool(forKey: "logged_in")
		
		if !isLoggedIn {
			let vc = LoginViewController()
			let nav = UINavigationController(rootViewController: vc)
			nav.modalPresentationStyle = .fullScreen
			present(nav, animated: false)
		}
	}


}

