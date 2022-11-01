//
//  UserListViewController.swift
//  MobileTestTaskGora
//
//  Created by Denis Nikulin on 01.11.2022.
//

import UIKit

class UserListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        let userListView = UserListView(viewFrame: .zero)
        
        // set handlers for userListView here, i.e.
        // userListView.clickHandler = { [weak self] in
//        }

        self.view = userListView
    }

}

