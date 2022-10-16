//
//  ViewController.swift
//  TodoViper
//
//  Created by Burak Ertaş on 12.10.2022.
//

import UIKit

class MainPageVC: UIViewController {

    @IBOutlet weak var todoTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var todoList = [Todo]()
    
    var mainPageVCPresenter: ViewToPresenterMainpageProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        todoTableView.delegate = self
        todoTableView.dataSource = self
        
        databaseCopy()
        
        MainPageRouter.createModule(ref: self)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        mainPageVCPresenter?.todoGet()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            if let todo = sender as? Todo {
                let sentVC = segue.destination as! TodoDetailVC
                sentVC.todo = todo
            }
        }
    }
    
    func databaseCopy() {
        let bundlePath = Bundle.main.path(forResource: "todo", ofType: ".sqlite")
        let targetPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let copyPlace = URL(fileURLWithPath: targetPath).appendingPathComponent("todo.sqlite")
        let fileManager = FileManager.default
        
        if fileManager.fileExists(atPath: copyPlace.path) {
            print("Database is copied")
        }else{
            do {
                try fileManager.copyItem(atPath: bundlePath!, toPath: copyPlace.path)
            } catch {
                print(error)
            }
        }
    }
    
}

extension MainPageVC: PresenterToViewMainpageProtocol {
    func sendDataToView(todoList: [Todo]) {
        self.todoList = todoList
        self.todoTableView.reloadData()
    }
}

extension MainPageVC: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        mainPageVCPresenter?.search(searchword: searchText)
    }
    
}

extension MainPageVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let todo = todoList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell") as! TodoTableViewCell
        cell.todoInfoLabel.text = "\(todo.todo_work!)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let todo = todoList[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: todo)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (contexualAction, view, bool) in
            let todo = self.todoList[indexPath.row]
            
            let alert = UIAlertController(title: "Delete", message: "\(todo.todo_work!) will deleted!", preferredStyle: .alert)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
            alert.addAction(cancelAction)
            
            let okAction = UIAlertAction(title: "Ok", style: .destructive) { action in
                self.mainPageVCPresenter?.delete(todo_id: todo.todo_id!)
            }
            alert.addAction(okAction)
            
            self.present(alert, animated: true)
            
        }
        
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
    
}
