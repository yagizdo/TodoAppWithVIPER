//
//  HomepageProtocols.swift
//  TodoAppWithProtocol
//
//  Created by Yılmaz Yağız Dokumacı on 27.01.2023.
//

import Foundation

protocol ViewToPresenterHomepageProtocol {
    
    var interactor :PresenterToInteractorHomepageProtocol? {get set}
    var view : PresenterToViewHomepageProtocol? {get set}
    
    func getAllTodos()
}


protocol PresenterToInteractorHomepageProtocol {
    
    var presenter : InteractorToPresentHomepageProtocol? {get set}
    
    func getAllTodos()
}

protocol InteractorToPresentHomepageProtocol {
    func transferDataToPresenter(todoList:[Todo])
}

protocol PresenterToViewHomepageProtocol {
    func transferDataToView(todoList:[Todo])
}


// Router Protocol
protocol PresentToRouterHomepageProtocol {
    static func createModule(ref:ViewController)
}
