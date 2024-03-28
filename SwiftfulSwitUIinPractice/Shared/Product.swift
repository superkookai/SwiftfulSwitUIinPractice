//
//  Product.swift
//  SwiftfulSwitUIinPractice
//
//  Created by Weerawut Chaiyasomboon on 28/3/2567 BE.
//

import Foundation

struct ProductArray: Codable {
    let products: [Product]
    let total, skip, limit: Int
}

struct Product: Codable, Identifiable {
    let id: Int
    let title, description: String
    let price: Int
    let discountPercentage, rating: Double
    let stock: Int
    let brand, category: String
    let thumbnail: String
    let images: [String]
}