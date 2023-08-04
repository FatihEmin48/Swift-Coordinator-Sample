//
//  MainController.swift
//  Corrdinator_Sample
//
//  Created by Fatih Karahan on 4.08.2023.
//

import UIKit

class MainController: UIViewController, Storyboarded {

    var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("test")
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        coordinator?.showLoginController()
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        coordinator?.showRegisterController()
    }
}
