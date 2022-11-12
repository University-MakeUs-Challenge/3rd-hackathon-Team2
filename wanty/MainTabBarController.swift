//
//  MainTabBarController.swift
//  wanty
//
//  Created by Da Hae Lee on 2022/11/12.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeNavigation = UINavigationController.init(rootViewController: ChoiceActView(title: "Category", bgColor: .white))
        let myProfileNavigation = UINavigationController.init(rootViewController: MyProfileView(title: "MyProfile", bgColor: .white))
        let communityNavigation = UINavigationController.init(rootViewController: CommunityView(title: "Community", bgColor: .white))
        
        self.viewControllers = [homeNavigation, myProfileNavigation, communityNavigation]
        
        let homeTabbarItem = UITabBarItem(title: "홈", image: UIImage(systemName: "airplayaudio"), tag: 0)
        let myProfileTabbarItem = UITabBarItem(title: "프로필", image: UIImage(systemName: "airplayaudio"), tag: 1)
        let communityTabbarItem = UITabBarItem(title: "커뮤니티", image: UIImage(systemName: "airplayaudio"), tag: 2)
        
        homeNavigation.tabBarItem = homeTabbarItem
        myProfileNavigation.tabBarItem = myProfileTabbarItem
        communityNavigation.tabBarItem = communityTabbarItem
    }
}
