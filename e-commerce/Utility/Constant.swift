//
//  Constant.swift
//  e-commerce
//
//  Created by Yasin Karasu on 13.11.2024.
//

import SwiftUI

//Data
let players:[Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products:[Product] = Bundle.main.decode("product.json")
//Color
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

//Layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}


//ux


//api



