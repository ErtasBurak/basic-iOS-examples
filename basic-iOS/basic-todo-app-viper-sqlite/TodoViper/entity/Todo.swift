//
//  Works.swift
//  TodoViper
//
//  Created by Burak Ertaş on 15.10.2022.
//

import Foundation

class Todo {
    var todo_id: Int?
    var todo_work: String?
    
    init(todo_id:Int, todo_work:String) {
        self.todo_id = todo_id
        self.todo_work = todo_work
    }
}
