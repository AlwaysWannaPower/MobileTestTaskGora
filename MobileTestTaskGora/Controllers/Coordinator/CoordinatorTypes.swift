//
//  CoordinatorTypes.swift
//  MobileTestTaskGora
//
//  Created by Дмитрий Никишов on 01.11.2022.
//

import UIKit

enum CoordinatorEvent {
    case userInfoViewToUserDetailsViewEvent
    case userDetailsViewToUserInfoViewEvent
}

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController? { get set }

    func processEvent(with type: CoordinatorEvent)
    func start()
    func showUnexpectedCoordinatorEventAlert()
}

protocol Coordinating: AnyObject {
    var coordinator: Coordinator? { get set }
}

enum CoordinatingViewModelTypes {
    case userInfoModel
    case userDetailsModel
}

extension Coordinator {
    func showUnexpectedCoordinatorEventAlert() {
        AppAlert.showAppNotification(
            controller: navigationController,
            notificationText: "Unexpected coordinator event"
        )
    }
}
