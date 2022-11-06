//
//  UserListView.swift
//  MobileTestTaskGora
//
//  Created by Дмитрий Никишов on 01.11.2022.
//

import UIKit

class UserListView: UIView {
    var viewClickHandler : UiViewClickHandlerWithParamater<String>?
    
    private let modelData = UserListMockProvider().getUserList()
    
    private let tableView : UITableView = {
        let view = UITableView(frame: .zero, style: .plain)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private func setupTableView()
    {
        tableView.register(
            UserItemTableCell.self,
            forCellReuseIdentifier: String(describing: UserItemTableCell.self)
        )
        tableView.dataSource = self
        tableView.delegate = self
    }

    
    private func setupViews() {
        setupTableView()
        LayoutAssembler.fillAreaWithView(area: self, filler: tableView)
    }
    
    init(viewFrame: CGRect) {
        super.init(frame: viewFrame)
        setupViews()
    }
       
    required init?(coder: NSCoder) {
       fatalError("init(coder:) has not been implemented for UserListView")
    }
}

extension UserListView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: String(describing: UserItemTableCell.self)
        ) as! UserItemTableCell

        let dataItem = modelData[indexPath.section]
        cell.userIdentity = "\(dataItem.firstName) \(dataItem.secondName)"
        cell.userNameLabelTapHandler = { [weak self] userName in
            self?.viewClickHandler?(userName)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return modelData.count
    }
}

extension UserListView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        if let indexPathForSelectedRow = tableView.indexPathForSelectedRow,
             indexPathForSelectedRow == indexPath {
             tableView.deselectRow(at: indexPath, animated: false)
             return nil
        }
        return indexPath
    }
}

