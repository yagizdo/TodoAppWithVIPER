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
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addTodoButton(_ sender: Any) {
        performSegue(withIdentifier: "toAddTodo", sender: nil)
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

