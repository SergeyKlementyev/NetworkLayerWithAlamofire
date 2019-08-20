//
//  NetworkService.swift
//  LetsIntegrateAlamofire
//
//  Created by Сергей Клементьев on 19/08/2019.
//  Copyright © 2019 Сергей Клементьев. All rights reserved.
//

import Foundation
import Alamofire

protocol NetworkServiceProtocol {
    func doHttpRequest(requestParameters: RequestParameters, completion: @escaping (Data?) -> Void)
}

class NetworkService: NetworkServiceProtocol {
    
    func doHttpRequest(requestParameters: RequestParameters, completion: @escaping (Data?) -> Void) {
        let request = Alamofire.request(requestParameters.url, method: requestParameters.method, parameters: requestParameters.parameters, encoding: requestParameters.encoding, headers: requestParameters.headers)

        request.responseData { (data: DataResponse<Data>) in
            DispatchQueue.main.async {
                completion(data.data)
            }
        }
    }
    
}


