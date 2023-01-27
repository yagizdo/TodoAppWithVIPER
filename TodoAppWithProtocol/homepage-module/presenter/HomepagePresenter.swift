//
//  HomepagePresenter.swift
//  TodoAppWithProtocol
//
//  Created by Yılmaz Yağız Dokumacı on 27.01.2023.
//

import Foundation

class HomepagePresenter : ViewToPresenterHomepageProtocol {
    var view: PresenterToViewHomepageProtocol?
    var interactor: PresenterToInteractorHomepageProtocol?
    
    func getAllTodos() {
        interactor?.getAllTodos()
    }
}


extension HomepagePresenter : InteractorToPresentHomepageProtocol {
    func transferDataToPresenter(todoList: [Todo]) {
        view?.transferDataToView(todoList: todoList)
    }
}
