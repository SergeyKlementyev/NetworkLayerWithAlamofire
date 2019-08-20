//
//  MainMappingService.swift
//  LetsIntegrateAlamofire
//
//  Created by Сергей Клементьев on 19/08/2019.
//  Copyright © 2019 Сергей Клементьев. All rights reserved.
//

import Foundation
import ObjectMapper

class MappingService {
    let decoder: JSONDecoder  = JSONDecoder()
    func map<T: Decodable>(data: Data, returnType: T.Type) -> T? {
        return try? decoder.decode(T.self, from: data)
    }
}

