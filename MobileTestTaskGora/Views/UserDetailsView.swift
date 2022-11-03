//
//  UserDetailsView.swift
//  MobileTestTaskGora
//
//  Created by Дмитрий Никишов on 02.11.2022.
//

import UIKit

class UserDetailsView: UIView {
    public var viewClickHandler : UiViewClickHandler?

    @objc
    private func tempViewTapHandler() {
        viewClickHandler?()
    }
    
    private lazy var tempView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        
        let tapGesture = UITapGestureRecognizer(
            target: self,
            action: #selector(tempViewTapHandler)
        )
        
        tapGesture.numberOfTapsRequired = 1
        view.addGestureRecognizer(tapGesture)
        view.isUserInteractionEnabled = true
        
        return view
    }()
    
    private func setupLayout() {
        self.addSubview(tempView)
        
        let safeArea = self.safeAreaLayoutGuide
        
        let constraints = [
            tempView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            tempView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            tempView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            tempView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setupViews() {
        setupLayout()
    }
    
    init(viewFrame: CGRect) {
        super.init(frame: viewFrame)
        setupViews()
    }
       
    required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented for UserListView")
    }
}
