//
//  ProductDetailView.swift
//  e-commerce
//
//  Created by Yasin Karasu on 18.11.2024.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading,spacing:5){
            //    Mark: - navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.connectedScenes
                    .compactMap { ($0 as? UIWindowScene)?.keyWindow }
                    .first??.safeAreaInsets.top ?? 0)
            //    Mark: - header
            HeaderDetailView()
                .padding(.horizontal)
            //    Mark: - top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1.0)
            //    Mark: - bottom part
            VStack(alignment: .center,spacing: 0){
                //    Mark: - ratings and size
            RatingsSizesDetailView()
                    .padding(.top,-20)
                    .padding(.bottom,10)
                    .padding(.horizontal,0)
                    .zIndex(0.5)
            
            
                //    Mark: - description
            ScrollView(.vertical,showsIndicators:false){
                    Text(sampleProduct.description)
                        .font(.system(.body,design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                    
                
            }
                //    Mark: - quantity and add favorites
            QuantityFavouriteDetailView()
                .padding(.vertical, 10)
                //    Mark: - add cart
            AddToCartDetailView()
                    .padding(.bottom,20)
            }
            
            .padding(.horizontal)
            .background(
              Color.white
                .clipShape(CustomShape())
                .padding(.top, -105)
            )
          } //: VSTACK
          .zIndex(0)
          .ignoresSafeArea(.all, edges: .all)
        .background(Color(red:sampleProduct.red,
                          green: sampleProduct.green,
                          blue: sampleProduct.blue)
        )
    }
}

#Preview {
    ProductDetailView()
        .previewLayout(.fixed(width: 375, height: 812))
}
