//
//  User.swift
//  MobileTestTaskGora
//
//  Created by Дмитрий Никишов on 01.11.2022.
//

import Foundation

struct UserInfo {
    let firstName: String
    let secondName: String
}

struct NameModel {
    var name: String
}

// MARK: - Sourse data
extension UserListViewController {

    func fetchData() -> [UserInfo] {
        let name1 = UserInfo(firstName: "Leanne", secondName: "Graham")
        let name2 = UserInfo(firstName: "Ervin", secondName: "Howell")
        let name3 = UserInfo(firstName: "Clementine", secondName: "Brauch")
        let name4 = UserInfo(firstName: "Patricia", secondName: "Lebsack")
        let name5 = UserInfo(firstName: "Chelsey", secondName: "Dietrich")
        let name6 = UserInfo(firstName: "Mrs.Dennis", secondName: "Schulist")
        let name7 = UserInfo(firstName: "Kurtis", secondName: "Weissnat")
        let name8 = UserInfo(firstName: "Glenna", secondName: "Reichert")
        let name9 = UserInfo(firstName: "Clementina", secondName: "DuBuque")
        let name10 = UserInfo(firstName: "Mr. Denis", secondName: "Nikulin")

        return [name1, name2, name3, name4, name5, name6, name7, name8, name9, name10]
    }
}
