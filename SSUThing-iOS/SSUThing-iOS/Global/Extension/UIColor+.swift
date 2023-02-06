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
    case lightgreen
    case whitegray
    case lightgray
    case darkGray
    case maingreen
    case mainbackgroundcolor
}

extension UIColor {
    
    static func customColor(_ color: CustomColor) -> UIColor {
            switch color {
            case .lightgreen:
                return UIColor(red: 0.34, green: 0.83, blue: 0.86, alpha: 1.00)
                
            case .whitegray:
                return UIColor(red: 0.94, green: 0.94, blue: 0.94, alpha: 1.00)
                
            case .lightgray:
                return UIColor(red: 0.64, green: 0.64, blue: 0.64, alpha: 1.00)
                
            case .darkGray:
                return UIColor(red: 0.65, green: 0.65, blue: 0.65, alpha: 1.00)
                
            case .maingreen:
                return UIColor(red: 0.41, green: 0.80, blue: 0.76, alpha: 1.00)
            
            case .mainbackgroundcolor:
                return UIColor(red: 0.97, green: 0.98, blue: 0.96, alpha: 1.00)
            }
        }
}
