//
//  Shop.swift
//  e-commerce
//
//  Created by Yasin Karasu on 26.11.2024.
//

import Foundation

class Shop:ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProducted: Product? = nil
}
