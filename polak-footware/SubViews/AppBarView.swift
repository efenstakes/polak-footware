//
//  AppBarView.swift
//  polak-footware
//
//  Created by MAC on 10/12/21.
//

import SwiftUI

struct AppBarView: View {
    var body: some View {
     
        HStack(alignment: .center, spacing: 20) {
            
            Image(systemName: "house")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 20, alignment: .center)
            
            Spacer()
            
            Image(systemName: "magnifyingglass")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20, alignment: .center)
            
            Image(systemName: "line.3.horizontal.decrease.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20, alignment: .center)
            
            Text("3")
                .font(.caption)
                .padding(10)
                .foregroundColor(.white)
                .background(
                    Circle().fill(.black.opacity(0.6))
                )
                .clipShape(Circle())
            
        }
        .padding(.horizontal, 10)
        
    }
}
