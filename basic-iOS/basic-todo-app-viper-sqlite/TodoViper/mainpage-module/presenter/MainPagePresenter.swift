//
//  MainPagePresenter.swift
//  TodoViper
//
//  Created by Burak Ertaş on 15.10.2022.
//

import Foundation

class MainPagePresenter: ViewToPresenterMainpageProtocol {
    var mainPageView: PresenterToViewMainpageProtocol?
    var mainPageInteractor: PresenterToInteractorMainpageProtocol?
    
    func todoGet() {
        mainPageInteractor?.allTodoGet()
    }
    
    func search(searchword: String) {
        mainPageInteractor?.todoSearch(searchword: searchword)
    }
    
    func delete(todo_id: Int) {
        mainPageInteractor?.deleteTodo(todo_id: todo_id)
    }
}

extension MainPagePresenter: InteractorToPresenterMainpageProtocol {
    
    func sendDataToPresenter(todoList: [Todo]) {
        mainPageView?.sendDataToView(todoList: todoList)
    }
    
    
}
