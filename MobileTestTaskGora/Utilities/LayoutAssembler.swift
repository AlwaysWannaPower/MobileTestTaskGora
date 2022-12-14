//
//  LayoutAssembler.swift
//  MobileTestTaskGora
//
//  Created by Дмитрий Никишов on 02.11.2022.
//

import UIKit

enum LayoutAssembler {
    public static func fillAreaWithView(area : UIView, filler : UIView)
    {
        area.addSubview(filler)
    
        let constraints = [
            filler.trailingAnchor.constraint(equalTo: area.trailingAnchor),
            filler.leadingAnchor.constraint(equalTo: area.leadingAnchor),
            filler.topAnchor.constraint(equalTo: area.topAnchor),
            filler.bottomAnchor.constraint(equalTo: area.bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
}

