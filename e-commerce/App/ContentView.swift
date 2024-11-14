//
//  ContentView.swift
//  e-commerce
//
//  Created by Yasin Karasu on 13.11.2024.
//

import SwiftUI

struct ContentView: View {
//    Mark: - properies
    
    
//    Mark: - BODY
    var body: some View {
        ZStack {
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
                            
                    }
                } )
                
                FooterView()
                    .padding(.horizontal)
            }
            .background(colorBackground.ignoresSafeArea(.all,edges: .all))
        }
        .ignoresSafeArea(.all,edges: .top)
       
    }
}

#Preview {
    ContentView()
}
