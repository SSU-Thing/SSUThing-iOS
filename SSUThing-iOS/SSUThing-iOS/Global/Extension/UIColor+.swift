//
//  UIColor+.swift
//  SSUThing-iOS
//
//  Created by 최지우 on 2023/02/02.
//

import Foundation

import UIKit
import SnapKit

enum CustomColor {
    case maingreen
}

extension UIColor {
    
    static func customColor(_ color: CustomColor) -> UIColor {
            switch color {
            case .maingreen:
                return UIColor(red: 0.41, green: 0.80, blue: 0.76, alpha: 1.00)
            }
        }
}
