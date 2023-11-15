//
//  Team.swift
//  Football Chants
//
//  Created by Bambang Tri Rahmat Doni on 15/11/23.
//

import Foundation

class Team: Codable {
    let id: TeamType
    let name: String
    let info: String
    let manager: Manager
    let founded: String
    var isPlaying: Bool
    
    internal init(id: TeamType, name: String, info: String, manager: Manager, founded: String, isPlaying: Bool = false) {
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
    
    required init(from decoder: Decoder) throws {
        let container: KeyedDecodingContainer<Team.CodingKeys> = try decoder.container(keyedBy: Team.CodingKeys.self)
        
        self.id = try container.decode(TeamType.self, forKey: Team.CodingKeys.id)
        self.name = try container.decode(String.self, forKey: Team.CodingKeys.name)
        self.info = try container.decode(String.self, forKey: Team.CodingKeys.info)
        self.manager = try container.decode(Manager.self, forKey: Team.CodingKeys.manager)
        self.founded = try container.decode(String.self, forKey: Team.CodingKeys.founded)
        self.isPlaying = try container.decode(Bool.self, forKey: Team.CodingKeys.isPlaying)
        
    }
    
    func encode(to encoder: Encoder) throws {
        var container: KeyedEncodingContainer<Team.CodingKeys> = encoder.container(keyedBy: Team.CodingKeys.self)
        
        try container.encode(self.id, forKey: Team.CodingKeys.id)
        try container.encode(self.name, forKey: Team.CodingKeys.name)
        try container.encode(self.info, forKey: Team.CodingKeys.info)
        try container.encode(self.manager, forKey: Team.CodingKeys.manager)
        try container.encode(self.founded, forKey: Team.CodingKeys.founded)
        try container.encode(self.isPlaying, forKey: Team.CodingKeys.isPlaying)
    }
}
