//
//  RandomStringProvider.swift
//  MobileTestTaskGora
//
//  Created by Дмитрий Никишов on 01.11.2022.
//

import Foundation

class RandomStringProvider {
    static private let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    static func getString(length: Int) -> String {
        return String((0..<length).map { _ in letters.randomElement()! })
    }
}
