//
//  TodoAddPresenter.swift
//  TodoViper
//
//  Created by Burak Ertaş on 15.10.2022.
//

import Foundation

class TodoAddPresenter: ViewToPresenterTodoAddProtocol {
    var todoAddInteractor: PresenterToInteractorTodoAddProtocol?
    
    func add(todo_work: String) {
        todoAddInteractor?.todoAdd(todo_work: todo_work)
    }
}
