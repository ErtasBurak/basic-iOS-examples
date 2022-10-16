//
//  TodoAddInteractor.swift
//  TodoViper
//
//  Created by Burak Ertaş on 15.10.2022.
//

import Foundation

class TodoAddInteractor: PresenterToInteractorTodoAddProtocol {
    
    let db: FMDatabase?
    
    init() {
        let targetPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let copyPlace = URL(fileURLWithPath: targetPath).appendingPathComponent("todo.sqlite")
        db = FMDatabase(path: copyPlace.path)
    }
    
    func todoAdd(todo_work: String) {
        db?.open()
        
        do {
            try db!.executeUpdate("INSERT INTO todo (todo_work) VALUES (?)", values: [todo_work])
        } catch {
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
