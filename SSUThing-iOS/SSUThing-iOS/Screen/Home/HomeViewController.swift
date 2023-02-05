//
//  ViewController.swift
//  SSUThing-iOS
//
//  Created by 최지우 on 2023/02/01.
//

import UIKit
import SnapKit

class HomeViewController : UIViewController {
    
    //rightBarButtonItem _ UIMenu
    lazy var menu : UIMenu = {
        
        let notice = UIAction(title: "실시간 공지 사항",
                              image: UIImage(systemName: "bell"),
                              handler: {_ in print("notice!")})
        
        let menu = UIMenu(title: "title",
                          image: UIImage(systemName: "bell"),
                          identifier: nil,
                          options: .displayInline,
                          children: [notice])
        
       return menu
    }()
    
    // WelcomeLabel
    private let UserWelcomeLabel : UILabel = {
        let label = UILabel()
        label.text = "김동현님\nSSUThing에 오신걸 환영해요!"
        label.numberOfLines = 2
        label.textAlignment = .left
        label.font = UIFont(name: "Noto Sans", size: 20)
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        return label
    }()

    // Select Date
    private let RentalStartDateLabel : UILabel = {
        let label = UILabel()
        label.text = "빌릴 날짜 : "
        return label
    }()

    private let RentalEndDateLabel : UILabel = {
        let label = UILabel()
        label.text = "반납 날짜 : "
        return label
    }()

    private let startDatePicker = UIDatePicker()
    private let endDatePicker = UIDatePicker()
    

    // Select Date _ StackView
    lazy var RentalStartStackView : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [RentalStartDateLabel,startDatePicker])
        stackView.axis = .horizontal
        return stackView
    }()

    lazy var RentalEndStackView : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [RentalEndDateLabel,endDatePicker])
        stackView.axis = .horizontal
        return stackView
    }()

    lazy var SelectDateStackView : UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [RentalStartStackView,RentalEndStackView])
        stackView.axis = .vertical
        stackView.spacing = 10
        return stackView
    }()



    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        // Do any additional setup after loading the view.
        setNavigationController()
        configureUI()
        
    }
    
    private func setNavigationController() {
        
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.topItem?.title = ""
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "",
                                                            image: UIImage(systemName: "ellipsis.circle"),
                                                            primaryAction: nil,
                                                            menu: menu)
    }
    
    private func configureUI() {
        setViewHierarchy()
        setConstrains()
        setCalenderStyle(startDatePicker)
        setCalenderStyle(endDatePicker)
    }
    
    
    func setViewHierarchy(){
        view.addSubview(UserWelcomeLabel)
        view.addSubview(SelectDateStackView)
    }
    
    func setConstrains(){
        
        UserWelcomeLabel.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(20)
            make.leading.equalToSuperview().offset(25)
        }
        SelectDateStackView.snp.makeConstraints { make in
            make.top.equalTo(UserWelcomeLabel.snp.bottom).offset(30)
            make.leading.equalToSuperview().offset(25)

        }
    }
    
    private func setCalenderStyle(_ targetDate: UIDatePicker) {
        targetDate.preferredDatePickerStyle = .compact
        targetDate.datePickerMode = .dateAndTime
        targetDate.locale = Locale(identifier: "ko-KR")
        targetDate.timeZone = .autoupdatingCurrent
        
        // 분 단위 설정이 30분 간격
        targetDate.minuteInterval = 30
        
        // 임시 날짜 비활성화
        var components = DateComponents()
        components.day = 10
        let maxDate = Calendar.autoupdatingCurrent.date(byAdding: components, to: Date())
        components.day = -10
        let minDate = Calendar.autoupdatingCurrent.date(byAdding: components, to: Date())

        targetDate.maximumDate = maxDate
        targetDate.minimumDate = minDate


        targetDate.addTarget(self, action: #selector(handleDatePicker(_:)), for: .valueChanged)
    }
    
    // MARK: - Selectors
    @objc
    private func handleDatePicker(_ sender: UIDatePicker) {
        print(sender.date)
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
