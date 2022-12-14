//
//  AppAlert.swift
//  MobileTestTaskGora
//
//  Created by Дмитрий Никишов on 01.11.2022.
//

import UIKit

class AppAlert {
    static func showAppNotification(
        controller: UINavigationController?,
        notificationText: String
    ) {
        let alert = UIAlertController(title: AppCommonStrings.appName,
                                      message: notificationText,
                                      preferredStyle: .alert)
    
        let ok = UIAlertAction(title: "OK", style: .default)
    
        alert.addAction(ok)
    
        controller?.present(alert, animated: true)
    }
}

