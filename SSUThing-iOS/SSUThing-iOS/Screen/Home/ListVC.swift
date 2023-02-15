//
//  ListVC.swift
//  SSUThing-iOS
//
//  Created by 최지우 on 2023/02/14.
//

import UIKit
import SnapKit

class ListVC : UIViewController {
    let button = UIButton(type: .system, primaryAction: UIAction(title: "Button Title", handler: { _ in
        print("Button tapped!")
    }))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        setViewHierarchy()
        setConstrains()
        
        
    }
    
    func setViewHierarchy(){
        view.addSubview(button)
        
    }
    
    func setConstrains(){
        
        button.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
        }
        
    }
}
