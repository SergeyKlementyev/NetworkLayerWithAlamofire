//
//  MainUserService.swift
//  LetsIntegrateAlamofire
//
//  Created by Сергей Клементьев on 19/08/2019.
//  Copyright © 2019 Сергей Клементьев. All rights reserved.
//

import Foundation

class MainUserService: UserService {
    
    lazy var mappingService: MappingService = MappingService()
    lazy var networkService: NetworkServiceProtocol = NetworkService()
    
    func getUser(completion: @escaping (UserModel) -> Void) {
        let requestParametrs = RequestParameters(url: "https://jsonplaceholder.typicode.com/todos/1", parameters: nil)
        
        networkService.doHttpRequest(requestParameters: requestParametrs) { (data) in
            if let data = data, let userModel: UserModel = self.mappingService.map(data: data, returnType: UserModel.self) {
                completion(userModel)
            }
        }
    }
}
