//
//  NameTableViewCell.swift
//  MobileTestTaskGora
//
//  Created by Denis Nikulin on 01.11.2022.
//

import UIKit

class UserInfoTableViewCell: UITableViewCell {

    // MARK: - Instance Properties

    var firstNameLabel = UILabel()
    var secondNameLabel = UILabel()
    var nameLabel = UILabel()

    // MARK: - Instance Methods

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        addSubview(firstNameLabel)
        addSubview(secondNameLabel)

        configurefirstNameLabel()
        configuresecondNameLabel()

        setConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func set(user: UserInfo) {
        firstNameLabel.text = user.firstName
        secondNameLabel.text = user.secondName
    }

    // MARK: - Private Methods

    private func configurefirstNameLabel() {
        firstNameLabel.numberOfLines = 0
        firstNameLabel.adjustsFontSizeToFitWidth = true

    }
    private func configuresecondNameLabel() {
        secondNameLabel.numberOfLines = 0
        secondNameLabel.adjustsFontSizeToFitWidth = true

    }
     private func setConstraints() {
         firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
         secondNameLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            firstNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            firstNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            firstNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 10),
            firstNameLabel.heightAnchor.constraint(equalToConstant: 30),

            secondNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            secondNameLabel.leadingAnchor.constraint(equalTo: firstNameLabel.trailingAnchor, constant: 20),
            secondNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 10),
            secondNameLabel.heightAnchor.constraint(equalToConstant: 30)

        ])
    }
}
