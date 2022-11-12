//
//  detailView.swift
//  wanty
//
//  Created by 박윤빈 on 2022/11/12.
//

import UIKit
import SnapKit

class DetailView: UIViewController {
    
    var selectedData: CenterModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        // 장소명
        self.title = CenterData[2].categoryName
        self.navigationController?.navigationBar.prefersLargeTitles = true
        setImageContraint()
        setBackgroundView()
        
        setCenterNameContraint()
//        setAddressLabelContraint()
        
        setDummy()
    }
    
    let image: UIImageView = {
        let mainImage = UIImageView(image: UIImage(named: "Climb"))
        return mainImage
    }()
    
    let image2: UIImageView = {
        let mainImage = UIImageView(image: UIImage(named: "Dummy"))
        return mainImage
    }()
    
    let backgroundView: UIView = {
        let backView = UIView()
        backView.backgroundColor = .white
        backView.layer.cornerRadius = 20
        return backView
    }()
    
    let centerName : UILabel = {
        let name = UILabel()
        name.text = CenterData[2].centerName
        name.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.bold)
        return name
    }()
    
    func setCenterNameContraint() {
        view.addSubview(centerName)
        
        centerName.snp.makeConstraints { make in
            make.top.equalTo(self.backgroundView).offset(30)
            make.leading.equalTo(self.view).offset(20)
            make.trailing.equalTo(self.view).offset(-150)
        }
    }
    
    func setDummy() {
        view.addSubview(image2)
        
        image2.snp.makeConstraints { make in
            make.top.equalTo(self.backgroundView).offset(80)
            make.leading.equalTo(self.view)
            make.trailing.equalTo(self.view)
            make.bottom.equalTo(self.view).offset(-80)
        }
    }

    
//    let addressLabel : UILabel = {
//        let name = UILabel()
//        name.textAlignment = .left
//        name.text = "서울특별시 강남구 00로 00-0"
//        name.font = UIFont.systemFont(ofSize: 30, weight: UIFont.Weight.bold)
//        return name
//    }()
//
//    func setAddressLabelContraint() {
//        view.addSubview(centerName)
//
//        centerName.snp.makeConstraints { make in
//            make.top.equalTo(self.backgroundView).offset(200)
//            make.trailing.equalTo(self.view).offset(20)
//            make.leading.equalTo(self.view).offset(200)
//        }
//    }

    
    func setBackgroundView() {
        view.addSubview(backgroundView)
        
        backgroundView.snp.makeConstraints { make in
            make.top.equalTo(self.image.snp_bottomMargin).offset(-30)
            make.bottom.equalTo(self.view)
            make.leading.equalTo(self.view)
            make.trailing.equalTo(self.view)
        }
    }
    
    func setImageContraint() {
        view.addSubview(image)
        
        image.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide)
            make.leading.equalTo(self.view)
            make.trailing.equalTo(self.view)
        }
    }
    
    
    
}
