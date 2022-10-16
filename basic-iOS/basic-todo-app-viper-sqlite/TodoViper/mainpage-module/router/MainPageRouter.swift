//
//  MainPageRouter.swift
//  TodoViper
//
//  Created by Burak Ertaş on 15.10.2022.
//

import Foundation

class MainPageRouter: PresenterToRouterMainpageProtocol {
    static func createModule(ref: MainPageVC) {
        let presenter = MainPagePresenter()
        
        ref.mainPageVCPresenter = presenter
        
        ref.mainPageVCPresenter?.mainPageView = ref
        ref.mainPageVCPresenter?.mainPageInteractor = MainPageInteractor()
        
        ref.mainPageVCPresenter?.mainPageInteractor?.mainPagePresenter = presenter
    }
}
