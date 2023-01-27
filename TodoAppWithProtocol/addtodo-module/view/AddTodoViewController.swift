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
    
    var addTodoPresenterDelegate:ViewToPresenterAddTodoProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        AddTodoRouter.createModule(ref: self)
    }

    @IBAction func addTodoButton(_ sender: Any) {
        if let todoTitle = todoTitleTF.text, let todoDesc = todoDescTF.text {
            let todo = Todo(title: todoTitle, description: todoDesc)
            addTodoPresenterDelegate?.addTodo(todo: todo)
        }
    }
}
