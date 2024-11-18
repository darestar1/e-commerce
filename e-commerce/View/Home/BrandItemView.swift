//
//  BrandItemView.swift
//  e-commerce
//
//  Created by Yasin Karasu on 18.11.2024.
//

import SwiftUI

struct BrandItemView: View {
    //    Mark: - property
    let brand: Brand
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray,lineWidth: 1))
    }
}

#Preview {
    BrandItemView(brand : brands[0])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
