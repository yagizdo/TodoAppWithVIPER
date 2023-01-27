//
//  AddTodoRouter.swift
//  TodoAppWithProtocol
//
//  Created by Yılmaz Yağız Dokumacı on 27.01.2023.
//

import Foundation

class AddTodoRouter : PresenterToRouterAddTodoProtocol {
    static func createModule(ref: AddTodoViewController) {
        // View
        ref.addTodoPresenterDelegate = AddTodoPresenter()
        
        
        // Presenter
        ref.addTodoPresenterDelegate?.interactor = AddTodoInteractor()
        
        
        // Interactor
    }
    
}
