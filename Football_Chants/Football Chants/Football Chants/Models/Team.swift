//
//  Team.swift
//  Football Chants
//
//  Created by Bambang Tri Rahmat Doni on 15/11/23.
//

import Foundation

struct Team: Codable {
    let id: TeamType
    let name: String
    let info: String
    let manager: Manager
    let founded: String
    var isPlaying: Bool = false
    
    init(id: TeamType, name: String, info: String, manager: Manager, founded: String, isPlaying: Bool = false) {
        self.id = id
        self.name = name
        self.info = info
        self.manager = manager
        self.founded = founded
        self.isPlaying = isPlaying
    }
    
    enum CodingKeys: CodingKey {
        case id
        case name
        case info
        case manager
        case founded
        case isPlaying
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.info, forKey: .info)
        try container.encode(self.manager, forKey: .manager)
        try container.encode(self.founded, forKey: .founded)
        try container.encode(self.isPlaying, forKey: .isPlaying)
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(TeamType.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.info = try container.decode(String.self, forKey: .info)
        self.manager = try container.decode(Manager.self, forKey: .manager)
        self.founded = try container.decode(String.self, forKey: .founded)
        self.isPlaying = try container.decode(Bool.self, forKey: .isPlaying)
    }
}
