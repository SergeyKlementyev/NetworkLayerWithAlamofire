//
//  UserModel.swift
//  LetsIntegrateAlamofire
//
//  Created by Сергей Клементьев on 19/08/2019.
//  Copyright © 2019 Сергей Клементьев. All rights reserved.
//

import Foundation

class UserModel: Decodable {
    var userId: Int?
    var id: Int?
    var title: String?
    var completed: Bool?
    
    enum CodingKeys: String, CodingKey {
        case userId
        case id
        case title
        case completed
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.userId = try? container.decode(Int.self, forKey: .userId)
        self.id = try? container.decode(Int.self, forKey: .id)
        self.title = try? container.decode(String.self, forKey: .title)
        self.completed = try? container.decode(Bool.self, forKey: .completed)
        
    }
}
