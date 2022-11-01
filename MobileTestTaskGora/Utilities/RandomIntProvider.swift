//
//  RandomIntProvider.swift
//  MobileTestTaskGora
//
//  Created by Дмитрий Никишов on 01.11.2022.
//

import Foundation

class RandomIntProvider {
    static func getRandomInt(min: Int, max: Int) -> Int {
        return Int.random(in: min...max)
    }
}
