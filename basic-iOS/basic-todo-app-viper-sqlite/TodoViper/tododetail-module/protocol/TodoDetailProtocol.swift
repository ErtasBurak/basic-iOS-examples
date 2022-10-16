//
//  TodoDetailProtocol.swift
//  TodoViper
//
//  Created by Burak Ertaş on 15.10.2022.
//

import Foundation

protocol ViewToPresenterTodoDetailProtocol {
    var todoDetailInteractor: PresenterToInteractorTodoDetailProtocol? {get set}
    
    func update(todo_id: Int, todo_work: String)
}

protocol PresenterToInteractorTodoDetailProtocol {
    func todoUpdate(todo_id: Int, todo_work: String)
}

protocol PresenterToRouterTodoDetailProtocol {
    static func createModule(ref: TodoDetailVC)
}
