//
//  ViewController.swift
//  LetsIntegrateAlamofire
//
//  Created by Сергей Клементьев on 19/08/2019.
//  Copyright © 2019 Сергей Клементьев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var userService: UserService = MainUserService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userService.getUser { userModel in
            if let id = userModel.id {
                print(id)
            }
            if let title = userModel.title {
                print(title)
            }
            if let userId = userModel.userId {
                print(userId)
            }
            if let completed = userModel.completed {
                print(completed)
            }
        }
    }
}

