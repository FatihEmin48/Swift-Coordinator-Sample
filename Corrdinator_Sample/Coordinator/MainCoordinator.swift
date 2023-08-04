//
//  MainCoordinator.swift
//  Corrdinator_Sample
//
//  Created by Fatih Karahan on 4.08.2023.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let controller = MainController.instantiate(name: .main)
        controller.coordinator = self
        navigationController.show(controller, sender: nil)
    }
    
    func showLoginController() {
        let controller = LoginController.instantiate(name: .main)
        navigationController.show(controller, sender: nil)
    }
    
    func showRegisterController() {
        let controller = RegisterController.instantiate(name: .main)
        navigationController.show(controller, sender: nil)
    }
}
