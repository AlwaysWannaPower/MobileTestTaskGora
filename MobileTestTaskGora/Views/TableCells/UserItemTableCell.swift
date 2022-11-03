//
//  UserItemTableCell.swift
//  MobileTestTaskGora
//
//  Created by Дмитрий Никишов on 02.11.2022.
//

import UIKit

class UserItemTableCell: UITableViewCell {
    var userIdentity : String {
        get {
            return userNameLabel.text ?? ""
        }
        
        set(newLabel) {
            userNameLabel.text = newLabel
        }
    }
    
    private let userNameLabel : UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.font = UIFont.systemFont(ofSize: 14)
        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }

    private func setupViews() {
        contentView.addSubview(userNameLabel)
        LayoutAssembler.fillAreaWithView(area: contentView, filler: userNameLabel)
    }
}
