//
//  ProductDetailsView.swift
//  polak-footware
//
//  Created by MAC on 10/13/21.
//

import SwiftUI

struct ProductDetailsView: View {
    let product: Product
    
    var body: some View {
        VStack {
            
            Image(product.image)
                .resizable()
                .scaledToFill()
                .frame(height: 220, alignment: .center)
            
            Text(product.name)
                .font(.largeTitle)
                .bold()
            
        }
    }
}
