//
//  ViewController.swift
//  forReserve
//
//  Created by 박윤빈 on 2022/11/13.
//

import UIKit
import SwiftUI
import FSCalendar
import SnapKit

extension UIColor {
    
    convenience init(red: Int, green: Int, blue: Int, a: Int = 0xFF) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: CGFloat(a) / 255.0
        )
    }
    convenience init(rgb: Int) {
           self.init(
               red: (rgb >> 16) & 0xFF,
               green: (rgb >> 8) & 0xFF,
               blue: rgb & 0xFF
           )
       }
}

class ReserveView: UIViewController, FSCalendarDelegate, FSCalendarDataSource {
    
    var calendar: FSCalendar!
    var formatter = DateFormatter()
    var count = 0
    
    let pickTimeBtn = PickTimeBtn()
    let getReserved = GetReserved()
    
    let TimePick: UILabel = {
        let label = UILabel()
        label.text = "시간 선택"
        label.font = UIFont.boldSystemFont(ofSize: 26)
        return label
    }()
    
    let countPeoplenum: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    let plusBtn: UIButton = {
        
        let btn = UIButton()
        btn.setTitle("+", for: .normal)
        btn.setTitleColor(UIColor(rgb: 0xFF5722), for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor(rgb: 0xFF5722).cgColor
        btn.layer.cornerRadius = 15
        btn.addTarget(self, action: #selector(countUp), for: .touchUpInside)
        
        return btn
    }()
    
    let minusBtn: UIButton = {
        
        let btn = UIButton()
        btn.setTitle("-", for: .normal)
        btn.setTitleColor(UIColor(rgb: 0xFF5722), for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor(rgb: 0xFF5722).cgColor
        btn.layer.cornerRadius = 15
        btn.addTarget(self, action: #selector(countdown), for: .touchUpInside)

        
        return btn
    }()
    
    let countPeople: UILabel = {
        let label = UILabel()
        label.text = "인원 선택"
        label.font = UIFont.boldSystemFont(ofSize: 26)
        return label
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.title = "예약하기"
        self.view.backgroundColor = .white
        calendar = FSCalendar(frame: CGRect(x: 0.0, y: 90.0, width: self.view.frame.width, height: 300.0))
        calendar.scrollDirection = .horizontal
        calendar.locale = Locale(identifier: "kor")
        self.view.addSubview(calendar)
        self.view.addSubview(TimePick)
        self.view.addSubview(countPeople)
        self.view.addSubview(countPeoplenum)
        self.view.addSubview(plusBtn)
        self.view.addSubview(minusBtn)

        addTimePickVC()
        setUpUIConstraints()
        //self.view.addSubview(TimePick)
        calendar.appearance.titleFont = UIFont.systemFont(ofSize: 17.0)
        calendar.appearance.headerTitleFont = UIFont.boldSystemFont(ofSize: 18.0)
        calendar.appearance.todayColor = .lightGray
        calendar.appearance.titleDefaultColor = .black
        calendar.appearance.headerTitleColor = .black
        calendar.appearance.selectionColor = UIColor(rgb: 0xFF5722)
        calendar.appearance.weekdayTextColor = UIColor(rgb: 0xFF5722)
        
        
        calendar.delegate = self
        calendar.dataSource = self
    }
    
    func minimumDate(for calendar: FSCalendar) -> Date {
        return Date()
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        formatter.dateFormat = "dd-MMM-yyyy"
        print("Date selected == \(formatter.string(from: date))")
    }
    
    func addTimePickVC(){
        addChild(pickTimeBtn)
        view.addSubview(pickTimeBtn.view)
        addChild(getReserved)
        view.addSubview(getReserved.view)
    }
    
    
    func setUpUIConstraints() {
        
        
        TimePick.snp.makeConstraints{
            $0.top.equalTo(calendar).offset(320)
            $0.leading.equalToSuperview().offset(20)
        }
        
        
        
        pickTimeBtn.view.snp.makeConstraints{
            $0.top.equalTo(TimePick).offset(40)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(350)
            $0.height.equalTo(120)
            
            
        }
        
        getReserved.view.snp.makeConstraints{
            $0.bottom.equalTo(countPeoplenum).offset(300)
            $0.width.equalToSuperview()
            $0.height.equalTo(220)
        }
        
        countPeople.snp.makeConstraints{
                    $0.top.equalTo(TimePick).offset(185)
                    $0.leading.equalToSuperview().offset(20)

                }
        
        countPeoplenum.snp.makeConstraints{
            $0.top.equalTo(pickTimeBtn.view).offset(200)
            $0.centerX.equalToSuperview()
        }
        
        plusBtn.snp.makeConstraints{
            $0.centerY.equalTo(countPeoplenum)
            $0.leading.equalTo(countPeoplenum).offset(50)
            $0.height.width.equalTo(30)
        }
        
        minusBtn.snp.makeConstraints{
            $0.centerY.equalTo(countPeoplenum)
            $0.trailing.equalTo(countPeoplenum).offset(-50)
            $0.height.width.equalTo(30)
        }
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
    
    @objc func countUp() {
        count+=1
        countPeoplenum.text = String(count)
    }
    @objc func countdown() {
        if count == 0{
        countPeoplenum.text = String(0)

        } else{
            count-=1
            countPeoplenum.text = String(count)
        }

    }
    
    
}
