//
//  HomepageRouter.swift
//  TodoAppWithProtocol
//
//  Created by Yılmaz Yağız Dokumacı on 27.01.2023.
//

import Foundation

class HomepageRouter : PresentToRouterHomepageProtocol {
   static func createModule(ref: ViewController) {
        
        let presenter = HomepagePresenter()
        
        // View
        ref.homepagePresentDelegate = presenter
        
        // Present
        ref.homepagePresentDelegate?.view = ref
        ref.homepagePresentDelegate?.interactor = HomepageInteractor()
        
        // Interactor
        ref.homepagePresentDelegate?.interactor?.presenter = presenter
    }
}
