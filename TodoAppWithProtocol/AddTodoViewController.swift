//
//  AddTodoViewController.swift
//  TodoAppWithProtocol
//
//  Created by Yılmaz Yağız Dokumacı on 25.01.2023.
//

import UIKit

class AddTodoViewController: UIViewController {

    @IBOutlet weak var todoTitleTF: UITextField!
    
    @IBOutlet weak var todoDescTF: UITextField!
    
    var delegate:AddTodoVCToViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTodoButton(_ sender: Any) {
        if let todoTitle = todoTitleTF.text, let todoDesc = todoDescTF.text {
            let todo = Todo(title: todoTitle, description: todoDesc)
            delegate?.addTodo(todo: todo)
        }
    }
}
