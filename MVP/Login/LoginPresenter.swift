//
//  LoginPresenter.swift
//  MVP
//
//  Created by Jonathan Bijos on 24/03/17.
//  Copyright © 2017 Jonathan Bijos. All rights reserved.
//

struct LoginPresenter: LoginViewPresenter {
    weak var view: LoginView?
    var user: User?
    
    init(view: LoginView?, user: User?) {
        self.view = view
        self.user = user
    }
    
    func login() {
        view?.didLogin(error: nil)
    }
}
