//
//  GetReserved.swift
//  forReserve
//
//  Created by 박윤빈 on 2022/11/13.
//

import UIKit

class GetReserved: UIViewController {
    
    let btn9Time: UIButton = {
        
        let btn = UIButton()
        btn.setTitle("확인", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor = UIColor(rgb: 0xFF5722)
        btn.layer.cornerRadius = 15
        btn.addTarget(self, action: #selector(finReserveView), for: .touchUpInside)
        
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.layer.borderWidth = 0.5
        self.view.layer.borderColor = UIColor.lightGray.cgColor
        setOKUI()
        // Do any additional setup after loading the view.
    }
    
    func setOKUI(){
        view.addSubview(btn9Time)
        
        btn9Time.snp.makeConstraints{
            $0.top.equalToSuperview().offset(10)
            $0.trailing.equalToSuperview().offset(-20)
            $0.width.equalTo(200)
            $0.height.equalTo(40)
        }
    }
    
    @objc func finReserveView(){
        let goFinReserveController = FinReserveView()
        self.navigationController?.pushViewController(goFinReserveController, animated: true)
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
