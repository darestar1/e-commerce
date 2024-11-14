//
//  CategoryItemView.swift
//  e-commerce
//
//  Created by Yasin Karasu on 14.11.2024.
//

import SwiftUI

struct CategoryItemView: View {
    // Mark: - Property
    let category: Category

    // Mark: - Body
    var body: some View {
        Button(action: {}) {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray,lineWidth:1))
        }
    }
}


#Preview {
    CategoryItemView(category: categories[0])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
