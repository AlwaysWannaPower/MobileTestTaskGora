//
//  UserInfoCoordinator.swift
//  MobileTestTaskGora
//
//  Created by Дмитрий Никишов on 01.11.2022.
//

import UIKit

class UserInfoCoordinator: Coordinator, Coordinating {
    weak var coordinator: Coordinator?

    weak var navigationController: UINavigationController?

    private let viewControllerFactory: ViewControllerFactory

    func processEvent(with type: CoordinatorEvent) {
        switch type {
        case .userInfoViewToUserDetailsViewEvent:
            self.coordinator?.processEvent(with: type)

        case .userDetailsViewToUserInfoViewEvent:
            self.navigationController?.popViewController(animated: true)
        }
    }

    func start() {
        let vc = viewControllerFactory.createViewController(
            with: .userInfoModel,
            coordinator: self
        )

        navigationController?.setViewControllers([vc], animated: true)
    }

    init(viewControllerFactory: ViewControllerFactory) {
        self.viewControllerFactory = viewControllerFactory
    }
}
