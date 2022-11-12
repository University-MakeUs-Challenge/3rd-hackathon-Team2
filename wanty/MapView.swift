//
//  mapView.swift
//  wanty
//
//  Created by 박윤빈 on 2022/11/12.
//

import UIKit
import MapKit
import SnapKit

class MapKitViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        // 장소명
        self.title = "강남구"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor(named: "MainColor")!]
        
        setMapContraints()
        setFilterButtonContraints()
        addMapPins()
    }
    
    // Mapkit 사용하기
    let mapView: MKMapView = {
        let map = MKMapView()
        let initialLocation = CLLocation(latitude: 37.5026426, longitude: 127.0506822)
        let coordinateRegion = MKCoordinateRegion(
              center: initialLocation.coordinate,
              latitudinalMeters: 10000,
              longitudinalMeters: 10000
        )
        map.setRegion(coordinateRegion, animated: true)
        map.overrideUserInterfaceStyle = .light
        return map
    }()
    
    // Filter Button
    let filterButton: UIButton = {
        let filterButton = UIButton()
        filterButton.setTitleColor(UIColor(named: "MainColor"), for: .normal)
        filterButton.setTitle("필터", for: .normal)
        filterButton.addTarget(self, action: #selector(showLocationFilter), for: .touchUpInside)
        filterButton.translatesAutoresizingMaskIntoConstraints = false
        
        filterButton.backgroundColor = .white
        filterButton.layer.cornerRadius = 15
        return filterButton
    }()
    
    @objc func showLocationFilter() {
        // 아직 디자인 없음
        print("Touch up Filter Button")
    }
    
    
    // map contraints
    func setMapContraints() {
        view.addSubview(mapView)
        
        mapView.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide)
            make.bottom.equalTo(self.view)
            make.trailing.equalTo(self.view)
            make.leading.equalTo(self.view)
        }
    }
    
    // filter button contratint
    func setFilterButtonContraints() {
        view.addSubview(filterButton)
        filterButton.layer.zPosition = 1
        
        filterButton.snp.makeConstraints { make in
            make.leading.equalTo(self.view).offset(16)
            make.top.equalTo(self.view.safeAreaLayoutGuide).offset(14)
            make.size.equalTo(CGSize(width: 77, height: 27))
        }
    }
    
    func addMapPins() {
        for center in CenterData {
            let centerPin = MKPointAnnotation()
            centerPin.title = center.centerName
            centerPin.coordinate = CLLocationCoordinate2D(
                latitude: center.latitude,
                longitude: center.longitude
            )
            mapView.addAnnotation(centerPin)
        }
    }

}

extension MapKitViewController: MKMapViewDelegate {
    
}

