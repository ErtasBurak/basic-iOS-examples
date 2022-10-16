//
//  TodoAddProtocol.swift
//  TodoViper
//
//  Created by Burak Ertaş on 15.10.2022.
//

import Foundation

protocol ViewToPresenterTodoAddProtocol {
    var todoAddInteractor: PresenterToInteractorTodoAddProtocol? {get set}
    
    func add(todo_work: String)
}

protocol PresenterToInteractorTodoAddProtocol {
    func todoAdd(todo_work: String)
}

protocol PresenterToRouterTodoAddProtocol {
    static func createModule(ref: TodoAddVC)
}
