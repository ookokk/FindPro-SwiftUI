//
//  JobEntities.swift
//  FindProiOS
//
//  Created by Osman Kök on 22.04.2025.
//

import Foundation

struct Category: Codable {
    let id: Int
    let name: String
    let services: [Service]
}

struct Service: Codable {
    let id: Int
    let name: String
}

struct City: Codable {
    let il_id: Int
    let name: String
}

struct District: Codable {
    let il_id: Int
    let name: String
    let id: Int

}
