//
//  SectionView.swift
//  e-commerce
//
//  Created by Yasin Karasu on 14.11.2024.
//

import SwiftUI

struct SectionView: View {
    @State var rotateClockwise: Bool
    var body: some View {
        VStack(spacing:0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90:-90))
            Spacer()
        }
        .background(colorGray.cornerRadius(12))
        .frame(width:85)
            
    }
}

#Preview {
    SectionView(rotateClockwise: true)
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
