//
//  UserListMockProvider.swift
//  MobileTestTaskGora
//
//  Created by Дмитрий Никишов on 01.11.2022.
//

import Foundation

class UserListMockProvider: UserListProviderInterface {
    private let mockData: [UserInfo]
    
    private static let MOCK_DATA_MAX_LENGTH = 20
    private static let MOCK_DATA_ITEM_MAX_LENGTH = 10
    
    init() {
        let mockDataLength = RandomIntProvider
            .getRandomInt(min: 1, max: UserListMockProvider.MOCK_DATA_MAX_LENGTH)

        let mockDataItemLength = RandomIntProvider
            .getRandomInt(min: 1, max: UserListMockProvider.MOCK_DATA_ITEM_MAX_LENGTH)

        mockData = (0...mockDataLength).map { _ in
            UserInfo(
                firstName: RandomStringProvider.getString(length: mockDataItemLength),
                secondName: RandomStringProvider.getString(length: mockDataItemLength)
            )
        }
    }
    
    func getUserList() -> [UserInfo] {
        return mockData
    }
}
