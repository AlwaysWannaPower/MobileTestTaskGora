//
//  UserDetailsCoordinator.swift
//  MobileTestTaskGora
//
//  Created by Дмитрий Никишов on 01.11.2022.
//

import UIKit

class UserDetailsCoordinator: Coordinator, Coordinating {
    weak var coordinator: Coordinator?

    weak var navigationController: UINavigationController?

    private let viewControllerFactory: ViewControllerFactory

    func processEvent(with type: CoordinatorEvent) {
        switch type {
        case .userDetailsViewToUserInfoViewEvent:
            self.coordinator?.processEvent(with: type)

        case .userInfoViewToUserDetailsViewEvent:
            self.navigationController?.pushViewController(
                self.viewControllerFactory.createViewController(
                    with: .userDetailsModel,
                    coordinator: self
                ),
                animated: true
            )
        }
    }

    func start() {}

    init(viewControllerFactory: ViewControllerFactory) {
        self.viewControllerFactory = viewControllerFactory
    }
}
