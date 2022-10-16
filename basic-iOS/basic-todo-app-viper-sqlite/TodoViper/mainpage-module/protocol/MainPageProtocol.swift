//
//  MainPageProtocol.swift
//  TodoViper
//
//  Created by Burak Ertaş on 15.10.2022.
//

import Foundation

protocol ViewToPresenterMainpageProtocol {
    var mainPageInteractor: PresenterToInteractorMainpageProtocol? {get set}
    var mainPageView: PresenterToViewMainpageProtocol? {get set}
    
    func todoGet()
    func search(searchword: String)
    func delete(todo_id: Int)
}

protocol PresenterToInteractorMainpageProtocol {
    var mainPagePresenter: InteractorToPresenterMainpageProtocol? {get set}
    
    func allTodoGet()
    func todoSearch(searchword: String)
    func deleteTodo(todo_id: Int)
}

protocol InteractorToPresenterMainpageProtocol {
    func sendDataToPresenter(todoList: [Todo])
}

protocol PresenterToViewMainpageProtocol {
    func sendDataToView(todoList: [Todo])
}

protocol PresenterToRouterMainpageProtocol {
    static func createModule(ref: MainPageVC)
}
