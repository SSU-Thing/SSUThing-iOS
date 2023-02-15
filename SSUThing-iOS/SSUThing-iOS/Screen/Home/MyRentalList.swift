//
//  MyRentalList.swift
//  SSUThing-iOS
//
//  Created by 최지우 on 2023/02/15.
//

import UIKit
import SnapKit

class MyRentalList : UIView {
    
    lazy var myLentalListBox : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let lentalListLabel : UILabel = {
        let label = UILabel()
        label.text = "대여 목록"
        label.font = UIFont(name: "Noto Sans", size: 15)
        label.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        return label
    }()
    
    lazy var myLentalListImage : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "lentalList")
        return imageView
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
        
        addSubview(myLentalListBox)
        addSubview(lentalListLabel)
        addSubview(myLentalListImage)

        
    }
    
    private func setLayout(){
        
        myLentalListBox.snp.makeConstraints { make in
            make.height.equalTo(169)
            make.width.equalTo(340)
        }
        lentalListLabel.snp.makeConstraints { make in
            make.leading.equalTo(myLentalListBox).offset(15)
            make.top.equalTo(myLentalListBox).offset(15)
        }
        myLentalListImage.snp.makeConstraints { make in
            make.height.equalTo(71)
            make.width.equalTo(231)
            make.leading.equalTo(myLentalListBox).offset(54)
            make.top.equalTo(myLentalListBox).offset(64)
            

        }
        
    }
}
