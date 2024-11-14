//
//  CategoryModel.swift
//  e-commerce
//
//  Created by Yasin Karasu on 14.11.2024.
//

import Foundation

struct Category: Codable,Identifiable{
    let id: Int
    let name: String
    let image: String
}
