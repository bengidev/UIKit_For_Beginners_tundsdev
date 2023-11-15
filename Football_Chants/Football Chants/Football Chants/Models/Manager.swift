//
//  Manager.swift
//  Football Chants
//
//  Created by Bambang Tri Rahmat Doni on 15/11/23.
//

import Foundation

enum JobType: Codable {
    case manager
    case headCoach
    
    enum CodingKeys: CodingKey {
        case manager
        case headCoach
    }
    
    enum ManagerCodingKeys: CodingKey {}
    enum HeadCouchCodingKeys: CodingKey {}
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .manager:
            var nestedContainer = container.nestedContainer(keyedBy: JobType.ManagerCodingKeys.self, forKey: .manager)
        case .headCoach:
            var nestedContainer = container.nestedContainer(keyedBy: JobType.HeadCouchCodingKeys.self, forKey: .headCoach)
        }
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        var allKeys = ArraySlice(container.allKeys)
        guard let onlyKey = allKeys.popFirst(), allKeys.isEmpty else {
            throw DecodingError.typeMismatch(JobType.self, DecodingError.Context.init(codingPath: container.codingPath, debugDescription: "Invalid number of keys found, expected one.", underlyingError: nil))
        }
        switch onlyKey {
        case .manager:
            let nestedContainer = try container.nestedContainer(keyedBy: JobType.ManagerCodingKeys.self, forKey: .manager)
            self = JobType.manager
        case .headCoach:
            let nestedContainer = try container.nestedContainer(keyedBy: JobType.HeadCouchCodingKeys.self, forKey: .headCoach)
            self = JobType.headCoach
        }
    }
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
