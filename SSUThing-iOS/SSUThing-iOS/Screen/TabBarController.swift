//
//  TabBarController.swift
//  SSUThing-iOS
//
//  Created by 최지우 on 2023/02/02.
//

import UIKit
import SnapKit

class TabBarController: UITabBarController {
    
    let homeVC = HomeViewController()
    let MyListVC = MyListViewController()
    let MyPageVC = MyPageViewController()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        mainTabBar()
        
    }
    
    // back button 제거
    override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
         self.navigationItem.hidesBackButton = true
    }
}
