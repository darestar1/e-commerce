//
//  TitleView.swift
//  e-commerce
//
//  Created by Yasin Karasu on 18.11.2024.
//

import SwiftUI

struct TitleView: View {
    //    Mark: - preview
    var title:String
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top,15)
        .padding(.bottom,10)
    }
}

#Preview {
    TitleView(title: "Helmet")
        .previewLayout(.sizeThatFits)
        .background(colorBackground)
}
