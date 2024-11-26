//
//  ProductDetailView.swift
//  e-commerce
//
//  Created by Yasin Karasu on 18.11.2024.
//

import SwiftUI

struct ProductDetailView: View {
  // MARK: - PROPERTY
  
  @EnvironmentObject var shop: Shop
  
  // MARK: - BODY
  
  var body: some View {
    VStack(alignment: .leading, spacing: 5, content: {
      // NAVBAR
      NavigationBarDetailView()
        .padding(.horizontal)
        .padding(.top, UIApplication.shared.connectedScenes
                            .compactMap { ($0 as? UIWindowScene)?.keyWindow }
                            .first??.safeAreaInsets.top ?? 0)

      // HEADER
      HeaderDetailView()
        .padding(.horizontal)
      
      // DETAIL TOP PART
      TopPartDetailView()
        .padding(.horizontal)
        .zIndex(1)
      
      // DETAIL BOTTOM PART
      VStack(alignment: .center, spacing: 0, content: {
        // RATINGS + SIZES
        RatingsSizesDetailView()
          .padding(.top, -20)
          .padding(.bottom, 10)
        
        // DESCRIPTION
        ScrollView(.vertical, showsIndicators: false, content: {
          Text(shop.selectedProducted?.description ?? sampleProduct.description)
            .font(.system(.body, design: .rounded))
            .foregroundColor(.gray)
            .multilineTextAlignment(.leading)
        }) //: SCROLL
        
        // QUANTITY + FAVOURITE
        QuantityFavouriteDetailView()
          .padding(.vertical, 10)
        
        // ADD TO CART
        AddToCartDetailView()
          .padding(.bottom, 20)
      }) //: VSTACK
      .padding(.horizontal)
      .background(
        Color.white
          .clipShape(CustomShape())
          .padding(.top, -105)
      )
    }) //: VSTACK
    .zIndex(0)
    .ignoresSafeArea(.all, edges: .all)
    .background(
      Color(
        red: shop.selectedProducted?.red ?? sampleProduct.red,
        green: shop.selectedProducted?.green ?? sampleProduct.green,
        blue: shop.selectedProducted?.blue ?? sampleProduct.blue
      ).ignoresSafeArea(.all, edges: .all)
    )
  }
}

// MARK: - PREVIEW

struct ProductDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailView()
      .environmentObject(Shop())
  }
}
