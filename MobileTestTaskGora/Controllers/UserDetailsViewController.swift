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
        view.backgroundColor = .red
    }
    
//    override func loadView() {
//        let userListView = UserListView(viewFrame: .zero)
//        self.view = userListView
//    }
}
