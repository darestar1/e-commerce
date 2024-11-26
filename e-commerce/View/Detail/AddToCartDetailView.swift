//
//  AddToCartDetailView.swift
//  e-commerce
//
//  Created by Yasin Karasu on 19.11.2024.
//

import SwiftUI

struct AddToCartDetailView: View {
    //    Mark: - property
    @EnvironmentObject var shop: Shop
    var body: some View {
        Button(action:{
            feedback.impactOccurred()
        }){
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2,design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }
        .padding(15)
        .background(Color(red:shop.selectedProducted?.red ?? sampleProduct.red,
                          green: shop.selectedProducted?.green ?? sampleProduct.green,
                          blue:shop.selectedProducted?.blue ?? sampleProduct.blue))
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartDetailView()
        .environmentObject(Shop())
}
