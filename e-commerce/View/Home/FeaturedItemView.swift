//
//  FeaturedItemView.swift
//  e-commerce
//
//  Created by Yasin Karasu on 14.11.2024.
//

import SwiftUI

struct FeaturedItemView: View {
    //    Mark: - propery
    let player: Player
    //    Mark: - body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    FeaturedItemView(player: players[0])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
