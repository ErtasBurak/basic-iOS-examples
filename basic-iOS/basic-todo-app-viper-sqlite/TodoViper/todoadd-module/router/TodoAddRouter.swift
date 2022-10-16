//
//  TodoAddRouter.swift
//  TodoViper
//
//  Created by Burak Ertaş on 15.10.2022.
//

import Foundation

class TodoAddRouter: PresenterToRouterTodoAddProtocol {
    static func createModule(ref: TodoAddVC) {
        ref.todoAddPresenter = TodoAddPresenter()
        ref.todoAddPresenter?.todoAddInteractor = TodoAddInteractor()
    }
}
