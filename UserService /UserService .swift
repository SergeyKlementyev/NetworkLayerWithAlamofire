//
//  UserService .swift
//  LetsIntegrateAlamofire
//
//  Created by Сергей Клементьев on 19/08/2019.
//  Copyright © 2019 Сергей Клементьев. All rights reserved.
//

import Foundation

protocol UserService  {
    func getUser(completion: @escaping (UserModel) -> Void)
}
