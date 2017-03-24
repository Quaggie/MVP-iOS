//
//  LoginViewController.swift
//  MVP
//
//  Created by Jonathan Bijos on 24/03/17.
//  Copyright © 2017 Jonathan Bijos. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var presenter: LoginPresenter?
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
}

extension LoginViewController {
    func loginButtonPressed () {
        presenter?.login()
    }
}

extension LoginViewController: CodeBased {
    func setupLayout() {
        view.backgroundColor = .white
        
        view.addSubview(loginButton)
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|",
                                                                  options: NSLayoutFormatOptions(),
                                                                  metrics: nil, views: ["v0": loginButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(40)]|",
                                                                  options: NSLayoutFormatOptions(),
                                                                  metrics: nil, views: ["v0": loginButton]))
    }
}

extension LoginViewController: LoginView {
    func didLogin(error: Error?) {
        if let error = error {
            print("Error -> \(error.localizedDescription)")
        } else {
            print("Logged in with user \(presenter?.user)")
        }
    }
}
