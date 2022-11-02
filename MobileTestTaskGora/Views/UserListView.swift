//
//  UserListView.swift
//  MobileTestTaskGora
//
//  Created by Дмитрий Никишов on 01.11.2022.
//

import UIKit

class UserListView: UIView {

    // MARK: - Instance Properties

    var listOfName: [UserInfo] = []

    struct Cells {
        static let nameCell = "UserInfoTableViewCell"
    }
//    private let tempView: UIView = {
//        let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = .green
//        return view
//    }()

    let tableView: UITableView = {
        let table = UITableView()

        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()

    // MARK: - Instance Methods

    override init(frame viewFrame: CGRect) {
        super.init(frame: viewFrame)
        setupViews()
        configureTableView()
        setupLayout()
    }

    required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented for UserListView")
    }

    // MARK: - Private Methods

    private func setupViews() {
        self.addSubview(tableView)

    }

    private func configureTableView() {
        setTableViewDelegates()
        tableView.rowHeight = 50
        tableView.register( UserInfoTableViewCell.self,
                            forCellReuseIdentifier: Cells.nameCell)

    }

    private func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }

    private func setupLayout() {
        translatesAutoresizingMaskIntoConstraints = false

//        let safeArea = self.safeAreaLayoutGuide

        let constraints = [
            tableView.topAnchor.constraint(equalTo: self.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ]

        NSLayoutConstraint.activate(constraints)
    }
}

// MARK: - Extension

// Реализуем методы для протоколов
extension UserListView: UITableViewDelegate, UITableViewDataSource {
    // Указываем кол-во ячеек в секции
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listOfName.count
    }
    // Тут происходит работа непосредственно с ячейкой
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.nameCell) as? UserInfoTableViewCell  else {
            return UITableViewCell()}
        print("cell")
        let listOfname = listOfName[indexPath.row]
        cell.set(user: listOfname)
//        cell.accessoryType = .disclosureIndicator
        return cell
    }
}
