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
        
        
        GeometryReader { geo in
            ZStack(alignment: .topLeading) {
                
                ScrollView {
                    
                    // image
                    Image(product.image)
                        .resizable()
                        .scaledToFill()
                        .frame(
                            width: geo.size.width,
                            height: geo.size.height*0.5,
                            alignment: .center
                        )
                        .frame(maxHeight: geo.size.height*0.5)
                        .cornerRadius(20)
                    
                    
                    
                    VStack {
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
                                .font(.footnote)
                                .bold()
                            
                            Spacer()
                            
                            
                            Text("Size Guide")
                                .font(.caption)
                                .foregroundColor(.black.opacity(0.6))
                            
                        }
                        .padding(.top)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(36..<47) { number in
                                    
                                    Text("\(number)")
                                        .font(.title2)
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 20)
                                        .padding(.vertical, 24)
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
                                .font(.body)
                                .bold()
                            
                            Spacer()
                            
                            Image(systemName: "chevron.up")
                                .resizable()
                                .frame(width: 12, height: 7, alignment: .center)
                            
                        }
                        .padding(.top)
                        Text("Description for the shoe & more description for the show. buy now buy now buy now")
                            .font(.system(size: 15, weight: .regular))
                            .padding(.vertical)
                        
                        
                    }
                    .padding(.horizontal)
                    
                    
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
                    .padding(.horizontal, 16)
                    
                }
                
                
                HStack(alignment: .top) {
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 12, height: 16, alignment: .leading)
                    
                    Spacer()
                    
                    Text(product.name)
                        .bold()
                        
                    
                    Spacer()
                    
                    Text("")
                }
                .padding()
                .padding(.top, 40)
                .foregroundColor(.white.opacity(0.8))
                .background(Color.black.opacity(0.5))
                .frame(height: 80)
                .ignoresSafeArea()
                
                
            }
            .navigationBarHidden(true)
            .ignoresSafeArea()
            
        
        }
    }
    
}
