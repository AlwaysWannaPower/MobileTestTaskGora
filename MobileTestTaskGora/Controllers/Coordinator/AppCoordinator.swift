//
//  AppCoordinator.swift
//  MobileTestTaskGora
//
//  Created by Дмитрий Никишов on 01.11.2022.
//

import UIKit

enum Screen: String {
    case userInfo
    case userDetails
}

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController?
    var children: [Screen: Coordinator]?

    func processEvent(with type: CoordinatorEvent) {
        switch type {
        case .userInfoViewToUserDetailsViewEvent:
            children?[.userDetails]?.processEvent(with: type)

        case .userDetailsViewToUserInfoViewEvent:
            children?[.userInfo]?.processEvent(with: type)
        }
    }

    private let viewControllerFactory: ViewControllerFactory

    private func createCoordinator(
        type: CoordinatingViewModelTypes
    ) -> Coordinator & Coordinating {
        var result: Coordinator & Coordinating

        switch type {
        case .userInfoModel:
            result = UserInfoCoordinator(viewControllerFactory: self.viewControllerFactory)
        case .userDetailsModel:
            result = UserDetailsCoordinator(viewControllerFactory: self.viewControllerFactory)
        }

        result.navigationController = self.navigationController
        result.coordinator = self

        return result
    }

    init(controllerViewFactory: ViewControllerFactory) {
        viewControllerFactory = controllerViewFactory
    }

    func start() {
        self.navigationController?.isNavigationBarHidden = true

        self.children = [
            .userInfo: createCoordinator(type: .userInfoModel),
            .userDetails: createCoordinator(type: .userDetailsModel)
        ]

        self.children?[.userInfo]?.start()
    }
}
