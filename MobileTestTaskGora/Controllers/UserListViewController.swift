//
//  UserListViewController.swift
//  MobileTestTaskGora
//
//  Created by Denis Nikulin on 01.11.2022.
//

import UIKit

class UserListViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?

    // MARK: - Instance Properties

    var listOfName: [UserInfo] = []
    let userListView = UserListView(frame: .zero)

    // MARK: - Instance Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.title = "Users"
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        view.addSubview(userListView)

        listOfName = fetchData()
        setConstraints()
    }

    override func loadView() {
        super.loadView()

    }

    func setConstraints() {
        let constraints = [
            userListView.topAnchor.constraint(equalTo: view.topAnchor),
            userListView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            userListView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            userListView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }

}
        //        //        configureTableView()

        //        let userListView = UserListView(viewFrame: .zero)

        // set handlers for userListView here, i.e.
        // userListView.clickHandler = { [weak self] in
        //        }
        //        self.view = userListView

    // MARK: - Private Methods

    // MARK: - Sourse data
