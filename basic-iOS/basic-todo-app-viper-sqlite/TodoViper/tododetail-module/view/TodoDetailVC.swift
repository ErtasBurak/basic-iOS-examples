//
//  TodoDetailVC.swift
//  TodoViper
//
//  Created by Burak Ertaş on 15.10.2022.
//

import UIKit

class TodoDetailVC: UIViewController {

    @IBOutlet weak var tfTodoWork: UITextField!
    
    var todo: Todo?
    
    var todoDetailPresenter: ViewToPresenterTodoDetailProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TodoDetailRouter.createModule(ref: self)

        if let t = todo {
            tfTodoWork.text = t.todo_work
        }
        
    }
    

    @IBAction func buttonTodoUpdate(_ sender: Any) {
        if let tw = tfTodoWork.text, let t = todo {
            todoDetailPresenter?.update(todo_id: t.todo_id!, todo_work: tw)
        }
    }

}
