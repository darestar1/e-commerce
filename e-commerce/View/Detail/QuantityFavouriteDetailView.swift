//
//  QuantityFavouriteDetailView.swift
//  e-commerce
//
//  Created by Yasin Karasu on 19.11.2024.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    //    Mark: - property
    @State private var counter:Int = 0
    //    Mark: - body
    
    var body: some View {
        HStack(alignment: .center,spacing:6){
            Button(action:{if counter > 0{
                counter -= 1
            } }){
                Image(systemName: "minus.circle")
            }
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            Button(action:{ if counter < 100{
                counter += 1
            } }){
                Image(systemName: "plus.circle")
            }
            Spacer()
            Button(action:{ }){
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }
        }
        .font(.system(.title,design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

#Preview {
    QuantityFavouriteDetailView()
        .previewLayout(.sizeThatFits)
        .padding()
}
