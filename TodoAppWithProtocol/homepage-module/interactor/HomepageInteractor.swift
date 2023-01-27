//
//  HomepageInteractor.swift
//  TodoAppWithProtocol
//
//  Created by Yılmaz Yağız Dokumacı on 27.01.2023.
//

import Foundation

class HomepageInteractor : PresenterToInteractorHomepageProtocol {
    var presenter: InteractorToPresentHomepageProtocol?
    
    func getAllTodos() {
        var todosList = [Todo]()
        let todo1 = Todo(title: "Todo 1 Viper", description: "Viper is so good")
        let todo2 = Todo(title: "Todo 2 Viper", description: "Viper good")
        let todo3 = Todo(title: "Todo 3 Viper", description: "Viper is so good")
        let todo4 = Todo(title: "Todo 4 Viper", description: "Viper is so good")
        let todo5 = Todo(title: "Todo 5 Viper", description: "Viper is so good")
        
        todosList = [todo1,todo2,todo3,todo4,todo5]
        
        presenter?.transferDataToPresenter(todoList: todosList)
    }
}
