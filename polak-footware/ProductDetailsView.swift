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
        
        ZStack {
            
            ScrollView {
                
                Image(product.image)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200, alignment: .center)
                    .frame(maxHeight: 200)
                    .cornerRadius(20)
                
                // name
                Text(product.name)
                    .font(.title)
                    .bold()
                
                // price
                Text("$\( String(format: "%.2f", product.price) )")
                    .font(.title3)
                    .bold()
                
                
                // size
                HStack {
                    
                    Text("Size")
                        .font(.caption)
                        .bold()
                    
                    Spacer()
                    
                    
                    Text("Size Guide")
                        .font(.caption2)
                        .foregroundColor(.black.opacity(0.6))
                    
                }
                .padding(.top)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(36..<47) { number in
                            
                            Text("\(number)")
                                .font(.body)
                                .foregroundColor(.white)
                                .padding(.horizontal, 14)
                                .padding(.vertical, 16)
                                .background(
                                    RoundedRectangle(cornerRadius: 6)
                                )
                            
                        }
                    }
                }
                .padding(.bottom)
                
                
                // description
                HStack {
                    
                    Text("Description")
                        .font(.caption)
                        .bold()
                    
                    Spacer()
                    
                    Image(systemName: "chevron.up")
                        .resizable()
                        .frame(width: 9, height: 6, alignment: .center)
                    
                }
                .padding(.top)
                Text("Description for the shoe & more description for the show. buy now buy now buy now")
                    .font(.system(size: 15, weight: .regular))
                    .padding(.vertical)
                
                
            }
            
            
            VStack {
                
                Spacer()
                
                // add to favorites & buy now button
                HStack {
                    
                    // add to fav icon
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                        .padding()
                        .background(
                            Color.white.opacity(0.4)
                        )
                        .foregroundColor(.black)
                        .cornerRadius(6)
                    
                    Button("Add to Cart") {
                        print("add to cart")
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(
                        RoundedRectangle(cornerRadius: 24).fill(.black)
                    )
                    
                }
                .background(
                    Color.white.opacity(0.7)
                )
                
            }
            .padding(.bottom, 8)
            .padding(.top, 4)
            
            
            
        }
        .padding(.horizontal, 16)
        .navigationBarHidden(true)
    
    }
    
}
