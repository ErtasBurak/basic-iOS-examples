//
//  TodoDetailPresenter.swift
//  TodoViper
//
//  Created by Burak Ertaş on 15.10.2022.
//

import Foundation

class TodoDetailPresenter: ViewToPresenterTodoDetailProtocol {
    var todoDetailInteractor: PresenterToInteractorTodoDetailProtocol?
    
    func update(todo_id: Int, todo_work: String) {
        todoDetailInteractor?.todoUpdate(todo_id: todo_id, todo_work: todo_work)
    }
}
