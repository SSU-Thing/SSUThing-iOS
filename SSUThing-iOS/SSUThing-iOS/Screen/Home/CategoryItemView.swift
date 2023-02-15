//
//  CategoryItemView.swift
//  SSUThing-iOS
//
//  Created by 최지우 on 2023/02/15.
//

import UIKit
import SnapKit

class CategoryItemView : UIView {
    
    lazy var patrolButton : UIButton = {
        let btn = UIButton()
        //        UIImage(named: "green-square-Retina")
        btn.setImage(UIImage(named: "patrol.svg"), for: .normal)
        
//        btn.setPreferredSymbolConfiguration(.init(pointSize: 3, weight: .regular, scale: .default), forImageIn: .normal)
        //UIButton insets
//        btn.titleEdgeInsets = .init(top: 40, left: 50, bottom: 40, right: 50)
//        btn.frame.size = CGSizeMake(157, 157)
        btn.backgroundColor = .white
//        UIButton add action
        return btn
    }()
    
    lazy var bookButton : UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "book.svg"), for: .normal)
        btn.backgroundColor = .white
        return btn
    }()
    
    var gameButton : UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "game.svg"), for: .normal)
        btn.backgroundColor = .white
        return btn
    }()
    
    var eventButton : UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "event.svg"), for: .normal)
        btn.backgroundColor = .white
        return btn
    }()
    
    lazy var firstLineStackView : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [patrolButton,bookButton])
        stackView.axis = .horizontal
        stackView.spacing = 25
        stackView.alignment = .center
        return stackView
    }()
    
    lazy var secondLineStackView : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [gameButton,eventButton])
        stackView.axis = .horizontal
        stackView.spacing = 25
        stackView.alignment = .center
        return stackView
    }()
    
    lazy var categoryStackView : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [firstLineStackView,secondLineStackView])
        stackView.axis = .vertical
        stackView.spacing = 25
        stackView.alignment = .center
        return stackView
    }()
    
    
    
    // MARK: - View Life Cycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setViewHierarchy()
        setLayout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setViewHierarchy(){

        addSubview(categoryStackView)
        
    }
    
    private func setLayout(){
        
        patrolButton.snp.makeConstraints { make in
            make.height.equalTo(157)
            make.width.equalTo(157)
        }
        bookButton.snp.makeConstraints { make in
            make.height.equalTo(157)
            make.width.equalTo(157)
        }
        gameButton.snp.makeConstraints { make in
            make.height.equalTo(157)
            make.width.equalTo(157)
        }
        eventButton.snp.makeConstraints { make in
            make.height.equalTo(157)
            make.width.equalTo(157)
        }
        categoryStackView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(0)
            make.leading.equalToSuperview().offset(0)
        }
        

        
    }
    
    
}


