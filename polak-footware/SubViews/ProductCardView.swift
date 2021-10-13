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
        VStack(alignment: .center, spacing: 8) {
            
            // image & icon
            ZStack(alignment: .topTrailing) {

                // image
                Image(product.image)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)

                // icon
                Image(
                    systemName: product.isFavorite ? "heart.fill" : "heart"
                )
                    .resizable()
                    .frame(width: 20, height: 20, alignment: .topTrailing)
                    .padding(10)
                    .background(
                        Circle().fill(.gray.opacity(0.4))
                    )
                    .padding(8)

            }
            .frame(height: 200)
            .frame(maxHeight: 200)
            
            // name
            Text(product.name)
                .font(.subheadline)
                .bold()
                .foregroundColor(.black.opacity(0.8))
            
            // price
            Text("$ \(Int(product.price))")
                .font(.system(size: 17, weight: .semibold))
                .foregroundColor(.black.opacity(0.7))
            
        }
        .frame(maxWidth: .infinity)
        .frame(
            height: 280, alignment: .center
        )
        .background(
            Color.gray.opacity(0.9)
        )
        .cornerRadius(16)
        .padding()
        
    }
}
