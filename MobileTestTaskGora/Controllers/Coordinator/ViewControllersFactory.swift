//
//  ViewControllersFactory.swift
//  MobileTestTaskGora
//
//  Created by Дмитрий Никишов on 01.11.2022.
//

import UIKit

protocol ViewControllerFactory {
    func createViewController(
        with type: CoordinatingViewModelTypes,
        coordinator: Coordinator
    ) -> UIViewController & Coordinating
}

class ViewControllerFactoryImpl: ViewControllerFactory {
    func createViewController(
        with type: CoordinatingViewModelTypes,
        coordinator: Coordinator
    ) -> UIViewController & Coordinating {
        let vc = createViewModelBasedOnType(with: type)
        vc.coordinator = coordinator
        return vc
    }

    private func createViewModelBasedOnType(
        with type: CoordinatingViewModelTypes
    ) -> UIViewController & Coordinating {
        switch type {
        case .userDetailsModel:
            return UserDetailsViewController()
        case .userInfoModel:
            return UserListViewController()
        }
    }
}
