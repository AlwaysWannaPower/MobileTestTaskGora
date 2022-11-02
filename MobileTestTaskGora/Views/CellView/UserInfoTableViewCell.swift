//
//  NameTableViewCell.swift
//  MobileTestTaskGora
//
//  Created by Denis Nikulin on 01.11.2022.
//

import UIKit

class UserInfoTableViewCell: UITableViewCell {
    
    // MARK: - Instance Properties
    
    private var firstName: String = ""
    private var secondName: String = ""
    var userNameLabel = UILabel()
    
    // MARK: - Instance Methods
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(userNameLabel)
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(user: UserInfo) {
        firstName = user.firstName
        secondName = user.secondName
        userNameLabel.text = firstName + " " + secondName
    }
    
    // MARK: - Private Methods
    
    private func configureUserNameLabel() {
        userNameLabel.numberOfLines = 0
        userNameLabel.adjustsFontSizeToFitWidth = true
    }
    
    private func setConstraints() {
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            userNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            userNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            userNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 10),
            userNameLabel.heightAnchor.constraint(equalToConstant: 30)
            
        ])
    }
}
