//
//  ViewController.swift
//  SSUThing-iOS
//
//  Created by 최지우 on 2023/02/01.
//

import UIKit
import SnapKit

class HomeViewController : UIViewController {
    
    //UIView
    private let UserWelcomeLabel : UILabel = {
        let label = UILabel()
        label.text = "김동현님\nSSUThing에 오신걸 환영해요!"
        label.numberOfLines = 2
        label.textAlignment = .left
        label.font = UIFont(name: "Noto Sans", size: 20)
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        return label
    }()

    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        // Do any additional setup after loading the view.
        configureUI()
        
    }
    
    private func configureUI() {
        setViewHierarchy()
        setConstrains()
    }
    
    
    func setViewHierarchy(){
        view.addSubview(UserWelcomeLabel)
    }
    
    func setConstrains(){
        
        UserWelcomeLabel.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(20)
            make.leading.equalToSuperview().offset(25)
            
        }
    }
}


// MARK: - PreView
import SwiftUI

#if DEBUG
struct PreView: PreviewProvider {
    static var previews: some View {
        HomeViewController()
            .toPreview()
    }
}
#endif
