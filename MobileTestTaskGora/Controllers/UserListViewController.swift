//
//  UserListViewController.swift
//  MobileTestTaskGora
//
//  Created by Denis Nikulin on 01.11.2022.
//

import UIKit

class UserListViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        let userListView = UserListView(viewFrame: .zero)
        
        userListView.viewClickHandler = { [weak self] in
            self?.coordinator?.processEvent(with: .userInfoViewToUserDetailsViewEvent)
        }

        self.view = userListView
    }

}

