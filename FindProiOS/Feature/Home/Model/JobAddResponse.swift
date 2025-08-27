//
//  JobAddResponse.swift
//  FindProiOS
//
//  Created by Osman Kök on 23.04.2025.
//


import Foundation

struct JobAddResponse: Codable {
    let success: Bool
    let message: String?
    let result: Job?
}
