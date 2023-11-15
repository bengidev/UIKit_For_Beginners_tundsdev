//
//  Badges.swift
//  Football Chants
//
//  Created by Tunde on 12/12/2020.
//

import UIKit

enum TeamType: Codable {
    case arsenal
    case astonVilla
    case brighton
    case burnley
    case chelsea
    case everton
    case fulham
    case leeds
    case leicester
    case liverpool
    case manchesterUnited
    case manchesterCity
    case newcastle
    case palace
    case sheffield
    case southampton
    case tottenham
    case westBrom
    case wolves
    
    enum CodingKeys: CodingKey {
        case arsenal
        case astonVilla
        case brighton
        case burnley
        case chelsea
        case everton
        case fulham
        case leeds
        case leicester
        case liverpool
        case manchesterUnited
        case manchesterCity
        case newcastle
        case palace
        case sheffield
        case southampton
        case tottenham
        case westBrom
        case wolves
    }
    
    enum ArsenalCodingKeys: CodingKey {}
    enum AstonVillaCodingKeys: CodingKey {}
    enum BrightonCodingKeys: CodingKey {}
    enum BurnleyCodingKeys: CodingKey {}
    enum ChelseaCodingKeys: CodingKey {}
    enum EvertonCodingKeys: CodingKey {}
    enum FulhamCodingKeys: CodingKey {}
    enum LeedsCodingKeys: CodingKey {}
    enum LeicesterCodingKeys: CodingKey {}
    enum LiverpoolCodingKeys: CodingKey {}
    enum ManchesterUnitedCodingKeys: CodingKey {}
    enum ManchesterCityCodingKeys: CodingKey {}
    enum NewcastleCodingKeys: CodingKey {}
    enum PalaceCodingKeys: CodingKey {}
    enum SheffieldCodingKeys: CodingKey {}
    enum SouthamptonCodingKeys: CodingKey {}
    enum TottenhamCodingKeys: CodingKey {}
    enum WestBromCodingKeys: CodingKey {}
    enum WolvesCodingKeys: CodingKey {}
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .arsenal:
            var nestedContainer = container.nestedContainer(keyedBy: TeamType.ArsenalCodingKeys.self, forKey: .arsenal)
        case .astonVilla:
            var nestedContainer = container.nestedContainer(keyedBy: TeamType.AstonVillaCodingKeys.self, forKey: .astonVilla)
        case .brighton:
            var nestedContainer = container.nestedContainer(keyedBy: TeamType.BrightonCodingKeys.self, forKey: .brighton)
        case .burnley:
            var nestedContainer = container.nestedContainer(keyedBy: TeamType.BurnleyCodingKeys.self, forKey: .burnley)
        case .chelsea:
            var nestedContainer = container.nestedContainer(keyedBy: TeamType.ChelseaCodingKeys.self, forKey: .chelsea)
        case .everton:
            var nestedContainer = container.nestedContainer(keyedBy: TeamType.EvertonCodingKeys.self, forKey: .everton)
        case .fulham:
            var nestedContainer = container.nestedContainer(keyedBy: TeamType.FulhamCodingKeys.self, forKey: .fulham)
        case .leeds:
            var nestedContainer = container.nestedContainer(keyedBy: TeamType.LeedsCodingKeys.self, forKey: .leeds)
        case .leicester:
            var nestedContainer = container.nestedContainer(keyedBy: TeamType.LeicesterCodingKeys.self, forKey: .leicester)
        case .liverpool:
            var nestedContainer = container.nestedContainer(keyedBy: TeamType.LiverpoolCodingKeys.self, forKey: .liverpool)
        case .manchesterUnited:
            var nestedContainer = container.nestedContainer(keyedBy: TeamType.ManchesterUnitedCodingKeys.self, forKey: .manchesterUnited)
        case .manchesterCity:
            var nestedContainer = container.nestedContainer(keyedBy: TeamType.ManchesterCityCodingKeys.self, forKey: .manchesterCity)
        case .newcastle:
            var nestedContainer = container.nestedContainer(keyedBy: TeamType.NewcastleCodingKeys.self, forKey: .newcastle)
        case .palace:
            var nestedContainer = container.nestedContainer(keyedBy: TeamType.PalaceCodingKeys.self, forKey: .palace)
        case .sheffield:
            var nestedContainer = container.nestedContainer(keyedBy: TeamType.SheffieldCodingKeys.self, forKey: .sheffield)
        case .southampton:
            var nestedContainer = container.nestedContainer(keyedBy: TeamType.SouthamptonCodingKeys.self, forKey: .southampton)
        case .tottenham:
            var nestedContainer = container.nestedContainer(keyedBy: TeamType.TottenhamCodingKeys.self, forKey: .tottenham)
        case .westBrom:
            var nestedContainer = container.nestedContainer(keyedBy: TeamType.WestBromCodingKeys.self, forKey: .westBrom)
        case .wolves:
            var nestedContainer = container.nestedContainer(keyedBy: TeamType.WolvesCodingKeys.self, forKey: .wolves)
        }
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        var allKeys = ArraySlice(container.allKeys)
        guard let onlyKey = allKeys.popFirst(), allKeys.isEmpty else {
            throw DecodingError.typeMismatch(TeamType.self, DecodingError.Context.init(codingPath: container.codingPath, debugDescription: "Invalid number of keys found, expected one.", underlyingError: nil))
        }
        switch onlyKey {
        case .arsenal:
            let nestedContainer = try container.nestedContainer(keyedBy: TeamType.ArsenalCodingKeys.self, forKey: .arsenal)
            self = TeamType.arsenal
        case .astonVilla:
            let nestedContainer = try container.nestedContainer(keyedBy: TeamType.AstonVillaCodingKeys.self, forKey: .astonVilla)
            self = TeamType.astonVilla
        case .brighton:
            let nestedContainer = try container.nestedContainer(keyedBy: TeamType.BrightonCodingKeys.self, forKey: .brighton)
            self = TeamType.brighton
        case .burnley:
            let nestedContainer = try container.nestedContainer(keyedBy: TeamType.BurnleyCodingKeys.self, forKey: .burnley)
            self = TeamType.burnley
        case .chelsea:
            let nestedContainer = try container.nestedContainer(keyedBy: TeamType.ChelseaCodingKeys.self, forKey: .chelsea)
            self = TeamType.chelsea
        case .everton:
            let nestedContainer = try container.nestedContainer(keyedBy: TeamType.EvertonCodingKeys.self, forKey: .everton)
            self = TeamType.everton
        case .fulham:
            let nestedContainer = try container.nestedContainer(keyedBy: TeamType.FulhamCodingKeys.self, forKey: .fulham)
            self = TeamType.fulham
        case .leeds:
            let nestedContainer = try container.nestedContainer(keyedBy: TeamType.LeedsCodingKeys.self, forKey: .leeds)
            self = TeamType.leeds
        case .leicester:
            let nestedContainer = try container.nestedContainer(keyedBy: TeamType.LeicesterCodingKeys.self, forKey: .leicester)
            self = TeamType.leicester
        case .liverpool:
            let nestedContainer = try container.nestedContainer(keyedBy: TeamType.LiverpoolCodingKeys.self, forKey: .liverpool)
            self = TeamType.liverpool
        case .manchesterUnited:
            let nestedContainer = try container.nestedContainer(keyedBy: TeamType.ManchesterUnitedCodingKeys.self, forKey: .manchesterUnited)
            self = TeamType.manchesterUnited
        case .manchesterCity:
            let nestedContainer = try container.nestedContainer(keyedBy: TeamType.ManchesterCityCodingKeys.self, forKey: .manchesterCity)
            self = TeamType.manchesterCity
        case .newcastle:
            let nestedContainer = try container.nestedContainer(keyedBy: TeamType.NewcastleCodingKeys.self, forKey: .newcastle)
            self = TeamType.newcastle
        case .palace:
            let nestedContainer = try container.nestedContainer(keyedBy: TeamType.PalaceCodingKeys.self, forKey: .palace)
            self = TeamType.palace
        case .sheffield:
            let nestedContainer = try container.nestedContainer(keyedBy: TeamType.SheffieldCodingKeys.self, forKey: .sheffield)
            self = TeamType.sheffield
        case .southampton:
            let nestedContainer = try container.nestedContainer(keyedBy: TeamType.SouthamptonCodingKeys.self, forKey: .southampton)
            self = TeamType.southampton
        case .tottenham:
            let nestedContainer = try container.nestedContainer(keyedBy: TeamType.TottenhamCodingKeys.self, forKey: .tottenham)
            self = TeamType.tottenham
        case .westBrom:
            let nestedContainer = try container.nestedContainer(keyedBy: TeamType.WestBromCodingKeys.self, forKey: .westBrom)
            self = TeamType.westBrom
        case .wolves:
            let nestedContainer = try container.nestedContainer(keyedBy: TeamType.WolvesCodingKeys.self, forKey: .wolves)
            self = TeamType.wolves
        }
    }
}

extension TeamType {
    
    var badge: UIImage {
        switch self {
            
        case .arsenal:
            return UIImage(named: "arsenal_ic")!
        case .astonVilla:
            return UIImage(named: "aston_villa_ic")!
        case .brighton:
            return UIImage(named: "brighton_ic")!
        case .burnley:
            return UIImage(named: "burnley_ic")!
        case .chelsea:
            return UIImage(named: "chelsea_ic")!
        case .everton:
            return UIImage(named: "everton_ic")!
        case .fulham:
            return UIImage(named: "fulham_ic")!
        case .leeds:
            return UIImage(named: "leeds_ic")!
        case .leicester:
            return UIImage(named: "leicester_ic")!
        case .liverpool:
            return UIImage(named: "liverpool_ic")!
        case .manchesterUnited:
            return UIImage(named: "manchester_united_ic")!
        case .manchesterCity:
            return UIImage(named: "manchester_city_ic")!
        case .newcastle:
            return UIImage(named: "newcastle_ic")!
        case .palace:
            return UIImage(named: "palace_ic")!
        case .sheffield:
            return UIImage(named: "sheffield_ic")!
        case .southampton:
            return UIImage(named: "southampton_ic")!
        case .tottenham:
            return UIImage(named: "tottenham_ic")!
        case .westBrom:
            return UIImage(named: "west_brom_ic")!
        case .wolves:
            return UIImage(named: "wolves_ic")!
        }
    }
    
    var background: UIColor {
        switch self {
            
        case .arsenal:
            return UIColor(named: "arsenal_bg")!
        case .astonVilla:
            return UIColor(named: "aston_villa_bg")!
        case .brighton:
            return UIColor(named: "brighton_bg")!
        case .burnley:
            return UIColor(named: "burnley_bg")!
        case .chelsea:
            return UIColor(named: "chelsea_bg")!
        case .everton:
            return UIColor(named: "everton_bg")!
        case .fulham:
            return UIColor(named: "fulham_bg")!
        case .leeds:
            return UIColor(named: "leeds_bg")!
        case .leicester:
            return UIColor(named: "leicester_bg")!
        case .liverpool:
            return UIColor(named: "liverpool_bg")!
        case .manchesterUnited:
            return UIColor(named: "manchester_united_bg")!
        case .manchesterCity:
            return UIColor(named: "manchester_city_bg")!
        case .newcastle:
            return UIColor(named: "newcastle_bg")!
        case .palace:
            return UIColor(named: "palace_bg")!
        case .sheffield:
            return UIColor(named: "sheffield_bg")!
        case .southampton:
            return UIColor(named: "southampton_bg")!
        case .tottenham:
            return UIColor(named: "tottenham_bg")!
        case .westBrom:
            return UIColor(named: "west_brom_bg")!
        case .wolves:
            return UIColor(named: "wolves_bg")!
        }
    }
    
    var chantFile: String {
        switch self {
            
        case .arsenal:
            return "arsenal"
        case .astonVilla:
            return "aston_villa"
        case .brighton:
            return "brighton"
        case .burnley:
            return "burnley"
        case .chelsea:
            return "chelsea"
        case .everton:
            return "everton"
        case .fulham:
            return "fulham"
        case .leeds:
            return "leeds"
        case .leicester:
            return "leicester"
        case .liverpool:
            return "liverpool"
        case .manchesterUnited:
            return "manchester_united"
        case .manchesterCity:
            return "manchester_city"
        case .newcastle:
            return "newcastle"
        case .palace:
            return "palace"
        case .sheffield:
            return "sheffield"
        case .southampton:
            return "southampton"
        case .tottenham:
            return "tottenham"
        case .westBrom:
            return "west_brom"
        case .wolves:
            return "wolves"
        }
    }
}
