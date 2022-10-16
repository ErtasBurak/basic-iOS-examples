//
//  TodoAddVC.swift
//  TodoViper
//
//  Created by Burak Ertaş on 15.10.2022.
//

import UIKit

class TodoAddVC: UIViewController {

    @IBOutlet weak var tfTodoWork: UITextField!
    
    var todoAddPresenter: ViewToPresenterTodoAddProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TodoAddRouter.createModule(ref: self)
        
    }
    
    @IBAction func buttonTodoAdd(_ sender: Any) {
        if let tw = tfTodoWork.text {
            todoAddPresenter?.add(todo_work: tw)
        }
    }
    
}
