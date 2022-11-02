//
//  MobileTestTaskGoraTests.swift
//  MobileTestTaskGoraTests
//
//  Created by Дмитрий Никишов on 01.11.2022.
//

import XCTest
@testable import MobileTestTaskGora

final class MobileTestTaskGoraUtilitiesTests: XCTestCase {

    func testRandomIntProvider() throws {
        let randomInt = RandomIntProvider.getRandomInt(min: 0, max: 10)

        XCTAssert((0...10).contains(randomInt))
    }

    func testRandomStringProvider() throws {
        let randomStringMaxLength = 5
        let randomString = RandomStringProvider.getString(length: randomStringMaxLength)

        XCTAssert(randomString.count <= randomStringMaxLength)
    }
}
