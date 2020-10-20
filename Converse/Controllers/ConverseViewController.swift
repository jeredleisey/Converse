//
//  ViewController.swift
//  Converse
//
//  Created by Jered Leisey on 10/12/20.
//

import UIKit
import FirebaseAuth

class ConverseViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .red
		
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		
		validateAuth()
	}
	
	private func validateAuth() {
		if FirebaseAuth.Auth.auth().currentUser == nil {
			let vc = LoginViewController()
			let nav = UINavigationController(rootViewController: vc)
			nav.modalPresentationStyle = .fullScreen
			present(nav, animated: false)
		}
	}


}

