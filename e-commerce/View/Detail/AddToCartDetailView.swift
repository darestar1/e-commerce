//
//  AddToCartDetailView.swift
//  e-commerce
//
//  Created by Yasin Karasu on 19.11.2024.
//

import SwiftUI

struct AddToCartDetailView: View {
    var body: some View {
        Button(action:{ }){
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2,design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }
        .padding(15)
        .background(Color(red:sampleProduct.red,
                          green: sampleProduct.green,
                          blue: sampleProduct.blue))
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartDetailView()
}
