//
//  NameTableViewCell.swift
//  MobileTestTaskGora
//
//  Created by Denis Nikulin on 01.11.2022.
//

import UIKit

class NameTableViewCell: UITableViewCell {
    
    // MARK: - Instance Properties

    var nameLabel = UILabel()
    
    
    // MARK: - Instance Methods

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        addSubview(nameLabel)

        configureNameLabel()
        setNameLabelConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods

    func set(name: NameModel) {
        nameLabel.text = name.name
    }

    private func configureNameLabel() {
        nameLabel.numberOfLines = 0
        nameLabel.adjustsFontSizeToFitWidth = true

    }
     private func setNameLabelConstraints() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 10),
            nameLabel.heightAnchor.constraint(equalToConstant: 30)

        ])
    }
}
