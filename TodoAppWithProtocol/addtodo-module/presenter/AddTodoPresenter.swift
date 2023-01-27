//
//  AddTodoPresenter.swift
//  TodoAppWithProtocol
//
//  Created by Yılmaz Yağız Dokumacı on 27.01.2023.
//

import Foundation

class AddTodoPresenter : ViewToPresenterAddTodoProtocol {
    var interactor: PresenterToInteractorAddTodoProtocol?
    
    func addTodo(todo: Todo) {
        interactor?.addTodo(todo: todo)
    }
}
