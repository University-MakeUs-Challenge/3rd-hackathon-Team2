//
//  CenterModel.swift
//  wanty
//
//  Created by Da Hae Lee on 2022/11/13.
//

import Foundation

// MARK: - CenterModel
struct CenterModel: Codable {
    let centerID: Int
    let categoryName: String
    let centerName: String
    let phoneNum: String
    let regionName: String
    let latitude: Double
    let longitude: Double
    let openTime:Int
    let closeTime: Int
}

let CenterData: [CenterModel] = [
    CenterModel(centerID: 0, categoryName: "체육관", centerName: "팀스턴건 주짓수 킥복싱 MMA체육관", phoneNum: "0507-1491-3633", regionName: "강남구", latitude:37.5570717, longitude: 126.9430983, openTime: 10, closeTime: 22),
    CenterModel(centerID: 0, categoryName: "체육관", centerName: "강남구민체육관", phoneNum: "02-2176-0871", regionName: "강남구", latitude:37.4770471, longitude: 127.0518537, openTime: 10, closeTime: 22),
    CenterModel(centerID: 0, categoryName: "실내 암벽등반", centerName: "홍스타클라이밍", phoneNum: "0507-1401-7845", regionName: "강남구", latitude:37.5026426, longitude: 127.0506822, openTime: 10, closeTime: 22),
    CenterModel(centerID: 0, categoryName: "요가", centerName: "조성정아쉬탕가요가", phoneNum: "0507-1491-0828", regionName: "성북구", latitude:37.6046639, longitude: 127.0322395, openTime: 10, closeTime: 22),
    CenterModel(centerID: 0, categoryName: "요가", centerName: "요가앤필", phoneNum: "0507-1319-0174", regionName: "성북구", latitude:37.5946809, longitude: 127.0162776, openTime: 10, closeTime: 22)
]
