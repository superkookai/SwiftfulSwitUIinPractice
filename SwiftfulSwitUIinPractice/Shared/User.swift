//
//  User.swift
//  SwiftfulSwitUIinPractice
//
//  Created by Weerawut Chaiyasomboon on 28/3/2567 BE.
//

import Foundation

struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

struct User: Codable, Identifiable {
    let id: Int
    let firstName, lastName: String
    let age: Int
    let email, phone, username, password: String
    let image: String
    let height: Int
    let weight: Double
}
