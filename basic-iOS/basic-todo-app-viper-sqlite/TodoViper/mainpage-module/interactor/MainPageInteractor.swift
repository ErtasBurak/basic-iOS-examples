//
//  MainPageInteractor.swift
//  TodoViper
//
//  Created by Burak Ertaş on 15.10.2022.
//

import Foundation

class MainPageInteractor: PresenterToInteractorMainpageProtocol {
    var mainPagePresenter: InteractorToPresenterMainpageProtocol?
    
    let db: FMDatabase?
    
    init() {
        let targetPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let copyPlace = URL(fileURLWithPath: targetPath).appendingPathComponent("todo.sqlite")
        db = FMDatabase(path: copyPlace.path)
    }
    
    func allTodoGet() {
        var list = [Todo]()
        
        
        db?.open()
        
        do {
            let r = try db!.executeQuery("SELECT * FROM todo", values: nil)
            
            while r.next() {
                let todo = Todo(todo_id: Int(r.string(forColumn: "todo_id"))!, todo_work: r.string(forColumn: "todo_work"))
                list.append(todo)
            }
            
            mainPagePresenter?.sendDataToPresenter(todoList: list)
        } catch {
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func todoSearch(searchword: String) {
        var list = [Todo]()
        
        
        db?.open()
        
        do {
            let r = try db!.executeQuery("SELECT * FROM todo WHERE todo_work like '%\(searchword)%'", values: nil)
            
            while r.next() {
                let todo = Todo(todo_id: Int(r.string(forColumn: "todo_id"))!, todo_work: r.string(forColumn: "todo_work"))
                list.append(todo)
            }
            
            mainPagePresenter?.sendDataToPresenter(todoList: list)
        } catch {
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func deleteTodo(todo_id: Int) {
        db?.open()
        
        do {
            try db!.executeUpdate("DELETE FROM todo WHERE todo_id = ?", values: [todo_id])
            allTodoGet()
        } catch {
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
