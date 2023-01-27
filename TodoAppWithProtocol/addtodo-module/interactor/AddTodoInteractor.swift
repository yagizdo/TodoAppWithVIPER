//
//  AddTodoInteractor.swift
//  TodoAppWithProtocol
//
//  Created by Yılmaz Yağız Dokumacı on 27.01.2023.
//

import Foundation

class AddTodoInteractor : PresenterToInteractorAddTodoProtocol {
    func addTodo(todo: Todo) {
        print("Added : \(todo.title!) - \(todo.description!)")
    }
}
