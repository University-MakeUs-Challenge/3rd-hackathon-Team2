//
//  PickTimeBtn.swift
//  forReserve
//
//  Created by 박윤빈 on 2022/11/13.
//

import UIKit
import SnapKit

class PickTimeBtn: UIViewController {
    
    let btn9Time: UIButton = {
        
        let btn = UIButton()
        btn.setTitle("9:00", for: .normal)
        btn.setTitleColor(UIColor(rgb: 0xFF5722), for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor(rgb: 0xFF5722).cgColor
        btn.layer.cornerRadius = 15
        
        return btn
    }()
    
    let btn14Time: UIButton = {
        
        let btn = UIButton()
        btn.setTitle("14:00", for: .normal)
        btn.setTitleColor(UIColor(rgb: 0xFF5722), for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor(rgb: 0xFF5722).cgColor
        btn.layer.cornerRadius = 15
        
        return btn
    }()
    
    let btn10Time: UIButton = {
        
        let btn = UIButton()
        btn.setTitle("10:00", for: .normal)
        btn.setTitleColor(UIColor(rgb: 0xFF5722), for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor(rgb: 0xFF5722).cgColor
        btn.layer.cornerRadius = 15
        
        return btn
    }()
    
    let btn11Time: UIButton = {
        
        let btn = UIButton()
        btn.setTitle("11:00", for: .normal)
        btn.setTitleColor(UIColor(rgb: 0xFF5722), for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor(rgb: 0xFF5722).cgColor
        btn.layer.cornerRadius = 15
        
        return btn
    }()
    
    let btn12Time: UIButton = {
        
        let btn = UIButton()
        btn.setTitle("12:00", for: .normal)
        btn.setTitleColor(UIColor(rgb: 0xFF5722), for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor(rgb: 0xFF5722).cgColor
        btn.layer.cornerRadius = 15
        
        return btn
    }()
    
    let btn13Time: UIButton = {
        
        let btn = UIButton()
        btn.setTitle("13:00", for: .normal)
        btn.setTitleColor(UIColor(rgb: 0xFF5722), for: .normal)
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor(rgb: 0xFF5722).cgColor
        btn.layer.cornerRadius = 15
        
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.cornerRadius = 15
        // Do any additional setup after loading the view.
        setUI()
    }
    
    func setUI(){
        view.addSubview(btn9Time)
        view.addSubview(btn10Time)
        view.addSubview(btn11Time)
        view.addSubview(btn12Time)
        view.addSubview(btn13Time)
        view.addSubview(btn14Time)

        btn9Time.snp.makeConstraints{
            $0.top.equalToSuperview().offset(20)
            $0.trailing.equalTo(btn10Time).offset(-120)
            $0.width.equalTo(70)
            $0.height.equalTo(30)
        }
        
        btn10Time.snp.makeConstraints{
            $0.top.equalToSuperview().offset(20)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(70)
            $0.height.equalTo(30)
        }
        
        btn11Time.snp.makeConstraints{
            $0.top.equalToSuperview().offset(20)
            $0.leading.equalTo(btn10Time).offset(120)
            $0.width.equalTo(70)
            $0.height.equalTo(30)
        }
        
        btn12Time.snp.makeConstraints{
            $0.top.equalToSuperview().offset(60)
            $0.trailing.equalTo(btn10Time).offset(-120)
            $0.width.equalTo(70)
            $0.height.equalTo(30)
        }
        
        btn13Time.snp.makeConstraints{
            $0.top.equalToSuperview().offset(60)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(70)
            $0.height.equalTo(30)
        }
        
        btn14Time.snp.makeConstraints{
            $0.top.equalToSuperview().offset(60)
            $0.leading.equalTo(btn10Time).offset(120)
            $0.width.equalTo(70)
            $0.height.equalTo(30)
        }
        
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
