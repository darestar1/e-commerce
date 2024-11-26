//
//  HeaderDetailView.swift
//  e-commerce
//
//  Created by Yasin Karasu on 18.11.2024.
//

import SwiftUI

struct HeaderDetailView: View {
    //    Mark: - propert
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment:.leading, spacing: 6) {
            Text("Protective Gear")
            Text(shop.selectedProducted?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }
    }
}

#Preview {
    HeaderDetailView()
        .environmentObject(Shop())
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
