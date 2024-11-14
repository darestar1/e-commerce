//
//  NavigationBarView.swift
//  e-commerce
//
//  Created by Yasin Karasu on 13.11.2024.
//

import SwiftUI

struct NavigationBarView: View {
//    Mark: - Properties
    @State private var isAnimated:Bool = false
//    Mark: - Body
    var body: some View {
        HStack{
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1:0)
                .offset(x : 0,y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)){
                        isAnimated.toggle()
                    }
                })
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.black)
                Circle()
                    .fill(.red)
                    .frame(width: 14,height: 14, alignment: .center)
                    .offset(x: -21, y: -10)
            })
        }
    }
}

//    Mark: - Preview
#Preview {
    NavigationBarView()
}
