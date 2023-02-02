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
    let mylistVC = MyListViewController()
    let mypageVC = MyPageViewController()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = UIColor.customColor(.mainbackgroundcolor)
        mainTabBar()
        
    }
    
    
// back button 제거
//    override func viewWillAppear(_ animated: Bool) {
//         super.viewWillAppear(animated)
//         self.navigationItem.hidesBackButton = true
//    }

    
    
    // 각 tabBar에 rootViewController를 지정할 경우와의 차이점 알아보기
    func mainTabBar() {
        
        self.tabBar.tintColor = UIColor.customColor(.maingreen)
        self.tabBar.backgroundColor = .white
        self.tabBar.unselectedItemTintColor = .gray
        
        //set tile
        homeVC.title = "home"
        mylistVC.title = "mylist"
        mypageVC.title = "mypage"

        // assign view controllers to tab bar
        self.setViewControllers([homeVC,mylistVC,mypageVC], animated : false)

        
        guard let items = self.tabBar.items else {return}
        
        let images = [ "house.fill", "doc.text.fill", "person.fill" ]
//      mylistVC.tabBarItem.image = UIImage(systemName: "clock.arrow.circlepath")
        
        for x in 0...2 {
            items[x].image = UIImage (systemName: images[x])
        }
        
        tabBar.isHidden = false
        //네비게이션 뷰컨으로 푸쉬했을 때 밑에 바가 사라지지 않도록
        self.hidesBottomBarWhenPushed = false
        
        
    }
    
}

extension UITabBar {
    override open func sizeThatFits(_ size: CGSize) -> CGSize {
    var sizeThatFits = super.sizeThatFits(size)
    sizeThatFits.height = 100 // 원하는 길이
    return sizeThatFits
   }
}
