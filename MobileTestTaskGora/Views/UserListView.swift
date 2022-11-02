//
//  UserListView.swift
//  MobileTestTaskGora
//
//  Created by Дмитрий Никишов on 01.11.2022.
//

import UIKit

class UserListView: UIView {
    
    // MARK: - Instance Properties
    
    let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.layer.cornerRadius = 10
        return table
    }()
    
    struct Cells {
        static let nameCell = "UserInfoTableViewCell"
    }
    
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
        tableView.rowHeight = 50
        tableView.register( UserInfoTableViewCell.self,
                            forCellReuseIdentifier: Cells.nameCell)
        
    }
    
    private func setupLayout() {
        translatesAutoresizingMaskIntoConstraints = false
        
        let safeArea = self.safeAreaLayoutGuide
        
        let constraints = [
            tableView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
            
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
}
