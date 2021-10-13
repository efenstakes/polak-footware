//
//  ProductCardView.swift
//  polak-footware
//
//  Created by MAC on 10/13/21.
//

import SwiftUI

struct ProductCardView: View {
    let product: Product;
    
    var body: some View {
        VStack(alignment: .center, spacing: 4) {
            
            // image & icon
            ZStack(alignment: .topTrailing) {

                // image
                Image(product.image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity)
                    .frame(maxHeight: 200)
                    .frame(height: 200)

                // icon
                Image(
                    systemName: product.isFavorite ? "heart.fill" : "heart"
                )
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 20, height: 20, alignment: .topTrailing)
                    .padding(10)
                    .background(
                        Circle().fill(.gray.opacity(0.4))
                    )
                    .foregroundColor(.gray.opacity(0.7))
                    .padding(8)

            }
            .frame(maxHeight: 200)
            .frame(height: 200)
            
            // name
            Text(product.name)
                .font(.title3)
                .bold()
                .foregroundColor(.black.opacity(0.8))
            
            // price
            Text("$ \(Int(product.price))")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.black.opacity(0.7))
            
        }
        .frame(maxWidth: .infinity)
        .frame(
            height: 280, alignment: .center
        )
        .background(
            Color.gray.opacity(0.1)
        )
        .cornerRadius(16)
        .padding()
        
    }
}
