//
//  Job.swift
//  FindProiOS
//
//  Created by Osman Kök on 22.04.2025.
//

import Foundation

struct Job: Codable {
    let _id: String?
    let jobId: Int?
    let userId: Int?
    let expiryDate: Date?
    let country: String?
    let jobCategoryId: Int?
    let cityId: Int?
    let districtId: Int?
    let hourlyWage: Int?
    let jobServiceId: Int?
    let description: String?
    let isCompleted: Bool?
    let createdAt: String?
    let updatedAt: String?
    let fullName: String?
    let profilePicture: String?
}
