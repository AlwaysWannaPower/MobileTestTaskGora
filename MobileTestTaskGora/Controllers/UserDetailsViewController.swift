//
//  UserDetailsViewController.swift
//  MobileTestTaskGora
//
//  Created by Дмитрий Никишов on 01.11.2022.
//

import UIKit

class UserDetailsViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        let userListView = UserDetailsView(viewFrame: .zero)
        userListView.viewClickHandler = { [weak self] in
            self?.coordinator?.processEvent(with: .userDetailsViewToUserInfoViewEvent)
        }
        
        self.view = userListView
    }
}
