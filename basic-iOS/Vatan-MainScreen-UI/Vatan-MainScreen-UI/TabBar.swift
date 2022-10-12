//
//  TabBar.swift
//  Vatan-MainScreen-UI
//
//  Created by Burak Ertaş on 11.10.2022.
//

import UIKit

class TabBar: UITabBarController, UITabBarControllerDelegate  {
    
    let homeIcon = UIImage(systemName: "house.fill")
    
    let categoryIcon = UIImage(systemName: "cube.fill")
    
    let cardIcon = UIImage(systemName: "cart.fill")
    
    let storeIcon = UIImage(systemName: "location.fill")
    
    let accountIcon = UIImage(systemName: "person.fill")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
        setupTabBars()
        
        UITabBar.appearance().tintColor = UIColor(named: "colordarkblue")
  
    }
    
    
    func setupTabBars(){
        // Create Tab one
        let tabOne = MainScreen()
        let tabOneBarItem = UITabBarItem(title: "Anasayfa", image: homeIcon, selectedImage: nil)

        tabOne.tabBarItem = tabOneBarItem
        
        // Create Tab two
        let tabTwo = Categories()
        let tabTwoBarItem = UITabBarItem(title: "Kategoriler", image: categoryIcon, selectedImage: nil)
        tabTwo.tabBarItem = tabTwoBarItem
        
        // Create Tab three
        let tabThree = Card()
        let tabThreeBarItem = UITabBarItem(title: "Sepet", image: cardIcon, selectedImage: nil)
        tabThree.tabBarItem = tabThreeBarItem
        
        // Create Tab four
        let tabFour = Shops()
        let tabFourBarItem = UITabBarItem(title: "Mağazalar", image: storeIcon, selectedImage: nil)
        tabFour.tabBarItem = tabFourBarItem
        
        // Create Tab five
        let tabFive = Account()
        let tabFiveBarItem = UITabBarItem(title: "Hesabım", image: accountIcon, selectedImage: nil)
        tabFive.tabBarItem = tabFiveBarItem
  
        self.viewControllers = [tabOne, tabTwo, tabThree,tabFour,tabFive]
        
        self.tabBar.backgroundColor = .white //default color is black and we can not see the second tab because it has gray color
    }
    
}
