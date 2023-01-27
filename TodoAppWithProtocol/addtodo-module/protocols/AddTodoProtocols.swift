//
//  AddTodoProtocols.swift
//  TodoAppWithProtocol
//
//  Created by Yılmaz Yağız Dokumacı on 27.01.2023.
//

import Foundation


protocol ViewToPresenterAddTodoProtocol {
    
    var interactor:PresenterToInteractorAddTodoProtocol? {get set}
    
    func addTodo(todo:Todo)
}

protocol PresenterToInteractorAddTodoProtocol {
    func addTodo(todo:Todo)
}


// Router Protocol
protocol PresenterToRouterAddTodoProtocol {
   static func createModule(ref:AddTodoViewController)
}
