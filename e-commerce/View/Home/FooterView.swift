//
//  FooterView.swift
//  e-commerce
//
//  Created by Yasin Karasu on 13.11.2024.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack (alignment: .center,spacing: 10){
            Text("We offer the most cutting edge, comfortable, lightweight and durable helmets in market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
            Text("Copyright © Yasin Karasu\nAll right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }.padding()
    }
}

#Preview {
    FooterView()
        .previewLayout(.sizeThatFits)
        .background(colorBackground)
}
