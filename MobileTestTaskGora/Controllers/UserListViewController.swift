//
//  UserListViewController.swift
//  MobileTestTaskGora
//
//  Created by Denis Nikulin on 01.11.2022.
//

import UIKit

class UserListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, Coordinating {
    var coordinator: Coordinator?
    
    // MARK: - Instance Properties
    
    struct Cells {
        static let nameCell = "UserInfoTableViewCell"
    }
    let userListView = UserListView(frame: .zero)
    var listOfName: [UserInfo] = []
    
    // MARK: - Instance Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.title = "Users"
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        view.addSubview(userListView)
        
        listOfName = fetchData()
        setConstraints()
        setTableViewDelegates()
    }
    
    override func loadView() {
        super.loadView()
    }
    
    private func setTableViewDelegates() {
        userListView.tableView.delegate = self
        userListView.tableView.dataSource = self
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
    
    // Указываем кол-во ячеек в секции
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listOfName.count
    }
    // Тут происходит работа непосредственно с ячейкой
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.nameCell) as? UserInfoTableViewCell  else {
            return UITableViewCell()}
        cell.accessoryType = .disclosureIndicator
        let listOfname = listOfName[indexPath.row]
        cell.set(user: listOfname)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
