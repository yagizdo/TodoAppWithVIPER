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
        
        return hucre
    }
}

extension ViewController: AddTodoVCToViewController {
    func addTodo(todo: Todo) {
        todos.append(todo)
        self.todosTableView.reloadData()
    }
}

