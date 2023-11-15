//
//  Manager.swift
//  Football Chants
//
//  Created by Bambang Tri Rahmat Doni on 15/11/23.
//

import Foundation

enum JobType: String, Codable {
    case manager = "Manager"
    case headCoach = "Head Coach"
}

struct Manager: Codable {
    let name: String
    let job: JobType
    
    init(name: String, job: JobType) {
        self.name = name
        self.job = job
    }
    
    enum CodingKeys: CodingKey {
        case name
        case job
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.job, forKey: .job)
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.job = try container.decode(JobType.self, forKey: .job)
    }
    
}
