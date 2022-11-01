//
//  NameListViewController.swift
//  MobileTestTaskGora
//
//  Created by Denis Nikulin on 01.11.2022.
//

import UIKit

class NameListViewController: UIViewController {
    
    // MARK: - Instance Properties
    
    var tableView = UITableView()
    var listOfName: [NameModel] = []
    
    struct Cells {
        static let nameCell = "NameTableViewCell"
    }
    
    // MARK: - Instance Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listOfName = fetchData()
        title = "Users"
        
        configureTableView()
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Private Methods
    
    private func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 50
        tableView.register( NameTableViewCell.self, forCellReuseIdentifier: Cells.nameCell)
        
        tableView.pin(to: view)
    }
    
    private func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}
// MARK: - Extension

// Реализуем методы для протоколов
extension NameListViewController: UITableViewDelegate, UITableViewDataSource {
    // Указываем кол-во ячеек в секции
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listOfName.count
    }
    // Тут происходит работа непосредственно с ячейкой
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.nameCell) as? NameTableViewCell  else {
            return UITableViewCell()}
        let listOfname = listOfName[indexPath.row]
        cell.set(name: listOfname)
        return cell
    }
    
    // FIXME: Этот метод для перехода из выбранной ячейки
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let destination = TestViewController()
        navigationController?.pushViewController(destination, animated: true)
        self.present(TestViewController(), animated: true, completion: nil)
        
    }
    
}
// MARK: - Sourse data
extension NameListViewController {
    
    func fetchData() -> [NameModel] {
        let name1 = NameModel(name: "Leanne Graham")
        let name2 = NameModel(name: "Ervin Howell")
        let name3 = NameModel(name: "Clementine Bauch")
        let name4 = NameModel(name: "Patricia Lebsack")
        let name5 = NameModel(name: "Chelsey Dietrich")
        let name6 = NameModel(name: "Mrs. Dennis Schulist")
        let name7 = NameModel(name: "Kurtis Weissnat")
        let name8 = NameModel(name: "Glenna Reichert")
        let name9 = NameModel(name: "Clementina DuBuque")
        let name10 = NameModel(name: "Mrs. Dennis Schulist")
        
        return [name1, name2, name3, name4, name5, name6, name7, name8, name9, name10]
    }
}
