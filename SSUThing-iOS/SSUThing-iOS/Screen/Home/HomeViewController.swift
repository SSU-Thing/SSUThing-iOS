//
//  ViewController.swift
//  SSUThing-iOS
//
//  Created by 최지우 on 2023/02/01.
//

import UIKit
import SnapKit

class HomeViewController : UIViewController {
    
    var UserWelcomeLabel : UILabel = {
        let label = UILabel()
        label.text = "김동현님\nSSUThing에 오신걸 환영해요!"
        label.numberOfLines = 2
        label.textAlignment = .left
        label.font = UIFont(name: "Noto Sans", size: 20)
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        return label
    }()
    
    var PatrolButton : UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "patrol"), for: .normal)
        btn.backgroundColor = .white
        btn.layer.cornerRadius = 10
        return btn
    }()
    
    var BookButton : UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "book"), for: .normal)
        btn.backgroundColor = .white
        btn.layer.cornerRadius = 10
        return btn
    }()
    
    var GameControllerButton : UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "gamecontroller"), for: .normal)
        btn.backgroundColor = .white
        btn.layer.cornerRadius = 10
        return btn
    }()
    
    var EventButton : UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "event"), for: .normal)
        btn.backgroundColor = .white
        btn.layer.cornerRadius = 10
        return btn
    }()
    
    //StackView
    lazy var FirstLineCategoryStackView : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [PatrolButton, BookButton])
        stackView.axis = .horizontal
        stackView.backgroundColor = .lightGray
        stackView.spacing = 25
        stackView.alignment = .leading
        return stackView
    }()
    
    lazy var SecondLineCategoryStackView : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [GameControllerButton, EventButton])
        stackView.axis = .horizontal
        stackView.backgroundColor = .lightGray
        stackView.spacing = 25
        stackView.alignment = .leading
        return stackView
    }()
    
    lazy var CategoryStackView : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [FirstLineCategoryStackView, SecondLineCategoryStackView])
        stackView.axis = .vertical
        stackView.spacing = 25
        stackView.backgroundColor = .yellow
        return stackView
    }()
    
    lazy var mainView : UIView = {
        let s = UIView()
        s.backgroundColor = .orange
        return s
    }()
    var CurrentRentalList : UIView = {
       let cu = UIView()
        cu.backgroundColor = .green
        return cu
    }()
    
    lazy var WholeStackView : UIView = {
        let w = UIView()
        w.backgroundColor = .white
        return w
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .
        // Do any additional setup after loading the view.
        setViewHierarchy()
        setConstrains()
    }
    
    func setViewHierarchy(){
        view.addSubview(UserWelcomeLabel)
//        view.addSubview(WholeStackView)
//        view.addSubview(CurrentRentalList)
//        view.addSubview(CategoryStackView)
//        view.addSubview(CurrentRentalList)
//        view.addSubview(BookButton)
//        view.addSubview(GameControllerButton)
//        view.addSubview(EventButton)

    }
    
    func setConstrains(){
        
//        WholeStackView.snp.makeConstraints { make in
//            make.edges.equalTo(self.view).inset(UIEdgeInsets(top: 80, left: 25, bottom: 110, right: 25))
//        }
        
        UserWelcomeLabel.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(10)
            make.leading.equalToSuperview().offset(25)
            make.trailing.equalToSuperview().offset(-90)
            make.height.equalTo(54)
        }
        
//        mainView.snp.makeConstraints { make in
//            make.top
//        }
        
        

//        CategoryStackView.snp.makeConstraints { make in
//            make.leading.equalToSuperview().offset(25)
//            make.trailing.equalToSuperview().offset(-25)
//            make.centerX.equalToSuperview()
//        }
        
//        CurrentRentalList.snp.makeConstraints { make in
//            make.leading.equalToSuperview().offset(25)
//            make.trailing.equalToSuperview().offset(-25)
//            make.centerX.equalToSuperview()
//            make.height.equalTo(169)
//
//        }
//
//        PatrolButton.snp.makeConstraints { make in
//            make.top.equalTo(UserWelcomeLabel).offset(26)
//            make.top.equalToSuperview().offset(100)
//            make.leading.equalToSuperview().offset(25)
//        }
        
//        BookButton.snp.makeConstraints { make in
//            make.leading.equalTo(PatrolButton.snp.trailing).offset(25)
//            make.trailing.equalToSuperview().offset(-25)
//
//        }
//        GameControllerButton.snp.makeConstraints { make in
//            make.leading.equalToSuperview().offset(25)
//            make.top.equalTo(PatrolButton.snp.bottom).offset(25)
//        }
//        EventButton.snp.makeConstraints { make in
//            make.trailing.equalToSuperview().offset(-25)
//            make.top.equalTo(BookButton.snp.bottom).offset(25)
//        }
//
        
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

//#if DEBUG
//import SwiftUI
//struct HomeViewControllerRepresentable: UIViewControllerRepresentable {
//
//func updateUIViewController(_ uiView: UIViewController,context: Context) {
//        // leave this empty
//}
//@available(iOS 13.0.0, *)
//func makeUIViewController(context: Context) -> UIViewController{
//    HomeViewController()
//    }
//}
//@available(iOS 13.0, *)
//struct ViewControllerRepresentable_PreviewProvider: PreviewProvider {
//    static var previews: some View {
//        Group {
//            HomeViewControllerRepresentable()
//                .ignoresSafeArea()
//                .previewDisplayName(/*@START_MENU_TOKEN@*/"Preview"/*@END_MENU_TOKEN@*/)
//                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
//        }
//
//    }
//} #endif
