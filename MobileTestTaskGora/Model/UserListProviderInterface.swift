//
//  UserListProviderInterface.swift
//  MobileTestTaskGora
//
//  Created by Дмитрий Никишов on 01.11.2022.
//

import Foundation

protocol UserListProviderInterface: AnyObject {
    func getUserList() -> [UserInfo]
}
