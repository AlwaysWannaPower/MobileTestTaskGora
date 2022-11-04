//
//  UserItemTableCell.swift
//  MobileTestTaskGora
//
//  Created by Дмитрий Никишов on 02.11.2022.
//

import UIKit

class UserItemTableCell: UITableViewCell {
    var userNameLabelTapHandler: UiViewClickHandlerWithParamater<String>?
    
    var userIdentity: String {
        get {
            return userNameLabel.text ?? ""
        }
        
        set(newLabel) {
            userNameLabel.text = newLabel
        }
    }
    
    @objc
    private func userNameLabelTapHandlerInternal() {
        userNameLabelTapHandler?(userIdentity)
    }
    
    private lazy var userNameLabel : UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.font = UIFont.systemFont(ofSize: 14)
        view.isUserInteractionEnabled = true

        let tap = UITapGestureRecognizer(
            target: self,
            action: #selector(userNameLabelTapHandlerInternal))
        tap.numberOfTapsRequired = 1
        view.addGestureRecognizer(tap)
        
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
