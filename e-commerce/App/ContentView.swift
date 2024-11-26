//
//  ContentView.swift
//  e-commerce
//
//  Created by Yasin Karasu on 13.11.2024.
//

import SwiftUI

struct ContentView: View {
//    Mark: - properies
    @EnvironmentObject var shop: Shop
    
//    Mark: - BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProducted == nil {
                VStack(spacing:0) {
                    NavigationBarView()
                        .padding(.horizontal,15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.connectedScenes
                            .compactMap { $0 as? UIWindowScene }
                            .flatMap { $0.windows }
                            .first { $0.isKeyWindow }?.safeAreaInsets.top ?? 0)

                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5)
                    ScrollView(.vertical, showsIndicators:false,content:{
                        VStack(spacing:0){
                            FeaturedTabView()
                                   .padding(.vertical,20)
                                   .frame(height: UIScreen.main.bounds.width / 1.475)
                            CategoryGridView()
                            TitleView(title: "Helmets")
                            LazyVGrid(columns: gridLayout, spacing: 15) {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut){
                                                shop.selectedProducted = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            }.padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                        }
                    } )
                    
                    FooterView()
                        .padding(.horizontal)
                }
                .background(colorBackground.ignoresSafeArea(.all,edges: .all))
            } else {
                ProductDetailView()
            }
        }
        .ignoresSafeArea(.all,edges: .top)
       
    }
}

#Preview {
    ContentView()
        .environmentObject(Shop())
}
