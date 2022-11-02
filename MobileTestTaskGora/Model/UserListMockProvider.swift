//
//  UserListMockProvider.swift
//  MobileTestTaskGora
//
//  Created by Дмитрий Никишов on 01.11.2022.
//

import Foundation

class UserListMockProvider: UserListProviderInterface {
    private let mockData: [UserInfo]
    // SwiftLint выдавал ошибку на '_' / отрефакторил
    private static let mockDataMaxLength = 20
    private static let mockDataItemLength = 10

    init() {
        let mockDataLength = RandomIntProvider
            .getRandomInt(min: 1, max: UserListMockProvider.mockDataMaxLength)

        let mockDataItemLength = RandomIntProvider
            .getRandomInt(min: 1, max: UserListMockProvider.mockDataItemLength)

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
