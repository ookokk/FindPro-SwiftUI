//
//  JobAdd.swift
//  FindProiOS
//
//  Created by Osman Kök on 22.04.2025.
//

import Foundation

struct JobAdd: Codable {
    var cityId: Int = 0
    var userId: Int = 0
    var hourlyWage: Int = 0
    var districtId: Int = 0
    var jobCategoryId: Int = 0
    var jobServiceId: Int = 0
    var description: String = ""
    var country: String = ""
}
