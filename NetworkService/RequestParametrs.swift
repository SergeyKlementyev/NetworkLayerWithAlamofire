//
//  RequestParametrs.swift
//  LetsIntegrateAlamofire
//
//  Created by Сергей Клементьев on 19/08/2019.
//  Copyright © 2019 Сергей Клементьев. All rights reserved.
//

import Foundation
import Alamofire

class RequestParameters {
    
    var url: String
    var method: HTTPMethod
    var parameters: Parameters?
    var headers: HTTPHeaders?
    var encoding: ParameterEncoding
    
    init(url: String, method: HTTPMethod = .get, parameters: Parameters?, headers: HTTPHeaders? = nil, encoding: ParameterEncoding = URLEncoding.default) {
        self.url = url
        self.method = method
        self.parameters = parameters
        self.headers = headers
        self.encoding = encoding
    }
}
