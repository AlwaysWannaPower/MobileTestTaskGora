//
//  MockObjectsTests.swift
//  MobileTestTaskGoraTests
//
//  Created by Дмитрий Никишов on 01.11.2022.
//

import XCTest
@testable import MobileTestTaskGora

final class MockObjectsTests: XCTestCase {

    func testMockDataProvider() throws {
        let mockData = UserListMockProvider().getUserList()        
        XCTAssert(!mockData.isEmpty)
    }

}
