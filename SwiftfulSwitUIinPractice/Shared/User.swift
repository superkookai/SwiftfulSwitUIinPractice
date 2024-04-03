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
    
    static var mock: User{
        User(
            id: 44,
            firstName: "Ricky",
            lastName: "Kai",
            age: 50,
            email: "rick@email.com",
            phone: "0892294937",
            username: "superkookai",
            password: "1234",
            image: Constants.randomImage,
            height: 170,
            weight: 75
        )
    }
}
