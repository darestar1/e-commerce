//
//  BrandGridView.swift
//  e-commerce
//
//  Created by Yasin Karasu on 18.11.2024.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            LazyHGrid(rows:gridLayout,spacing:columnSpacing){
                ForEach(brands) {
                    brand in BrandItemView(brand: brand)
                }
            }
            .frame(height: 200)
            .padding(15)
        }
    }
}

#Preview {
    BrandGridView()
        .previewLayout(.sizeThatFits)
        .background(colorBackground)
    
}
