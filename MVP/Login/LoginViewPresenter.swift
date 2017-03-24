//
//  LoginViewPresenter.swift
//  MVP
//
//  Created by Jonathan Bijos on 24/03/17.
//  Copyright © 2017 Jonathan Bijos. All rights reserved.
//

protocol LoginViewPresenter {
    init (view: LoginView?, user: User?)
    func login ()
}
