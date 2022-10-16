//
//  TodoDetailInteractor.swift
//  TodoViper
//
//  Created by Burak Ertaş on 15.10.2022.
//

import Foundation

class TodoDetailInteractor: PresenterToInteractorTodoDetailProtocol {
    
    let db: FMDatabase?
    
    init() {
        let targetPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let copyPlace = URL(fileURLWithPath: targetPath).appendingPathComponent("todo.sqlite")
        db = FMDatabase(path: copyPlace.path)
    }
    
    func todoUpdate(todo_id: Int, todo_work: String) {
        db?.open()
        
        do {
            try db!.executeUpdate("UPDATE todo SET todo_work = ? WHERE todo_id = ?", values: [todo_work,todo_id])
        } catch {
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
