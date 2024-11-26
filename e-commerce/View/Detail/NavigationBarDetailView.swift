//
//  NavigationBarDetailView.swift
//  e-commerce
//
//  Created by Yasin Karasu on 18.11.2024.
//

import SwiftUI

struct NavigationBarDetailView: View {
    //    Mark: - property
    @EnvironmentObject var shop :Shop
    var body: some View {
        HStack {
            Button(action:{
                withAnimation(.easeIn){
                    feedback.impactOccurred()
                    shop.selectedProducted = nil
                    shop.showingProduct = false
                }
            }){
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            Spacer()
            Button(action:{
                
            }) {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    NavigationBarDetailView()
        .environmentObject(Shop())
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
