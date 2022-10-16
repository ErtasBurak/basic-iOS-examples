//
//  TodoDetailRouter.swift
//  TodoViper
//
//  Created by Burak Ertaş on 15.10.2022.
//

import Foundation

class TodoDetailRouter: PresenterToRouterTodoDetailProtocol {
    
    static func createModule(ref: TodoDetailVC) {
        ref.todoDetailPresenter = TodoDetailPresenter()
        ref.todoDetailPresenter?.todoDetailInteractor = TodoDetailInteractor()
    }
    
}
