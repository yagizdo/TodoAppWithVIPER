//
//  ViewController.swift
//  TodoAppWithProtocol
//
//  Created by Yılmaz Yağız Dokumacı on 25.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var todosTableView: UITableView!
    
    var todos = [Todo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        todosTableView.delegate = self
        todosTableView.dataSource = self
        updateTitle()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        updateTitle()
    }
    
    @IBAction func addTodoButton(_ sender: Any) {
        performSegue(withIdentifier: "toAddTodo", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAddTodo" {
            if let delegate = sender as? AddTodoVCToViewController {
                let gidilecekVC = segue.destination as! AddTodoViewController
                gidilecekVC.delegate = delegate
            }
        }
    }
    
    func updateTitle() {
        self.title = "Todos (\(todos.count) remaining)"
    }
}


extension ViewController: UITableViewDataSource,UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let hucre = todosTableView.dequeueReusableCell(withIdentifier: "todoHucre") as! TableViewCell
        
        let todo = todos[indexPath.row]

        hucre.todoTitle.text = todo.title
        hucre.todoDescription.text = todo.description
        
        
        // Added cellBackground (view) background color and corner radius
        hucre.cellBackground.backgroundColor = UIColor(white: 0.95, alpha: 1)
        hucre.cellBackground.layer.cornerRadius = 10.0
        
        hucre.backgroundColor = UIColor.systemPurple
        
        hucre.selectionStyle = .none
        
        //hucre.layer.borderColor = UIColor.black.cgColor
        
        //hucre.layer.borderWidth = 2.0
        
        return hucre
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let swipedTodo = todos[indexPath.row]
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") {
            (contextualAction,view,bool) in
            
            if let todoIndex = self.todos.firstIndex(where: {$0.title == swipedTodo.title}) {
                self.todos.remove(at: todoIndex)
                self.todosTableView.reloadData()
                self.updateTitle()
            }
        }
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
}

extension ViewController: AddTodoVCToViewController {
    func addTodo(todo: Todo) {
        todos.append(todo)
        
        // After added todo reload table view
        self.todosTableView.reloadData()
        
        // After added todo go previous page with this code
        self.navigationController?.popViewController(animated: true)
    }
}

