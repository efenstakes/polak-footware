//
//  ContentView.swift
//  polak-footware
//
//  Created by MAC on 10/12/21.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                
                // title & filter
                HStack {
                    
                    Text("Shoes")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        
                    Spacer()
                    
                    Text("Sort by")
                        .font(.caption2)
                        .bold()
                    
                    Image(systemName: "chevron.down")
                        .resizable()
                        .frame(width: 10, height: 6, alignment: .center)
                    
                }
                .padding(.horizontal, 16)
                .padding(.top, 32)
                .padding(.bottom, -10)
                
                
                // list of products
                ForEach (products) { product in
                    NavigationLink(
                        destination: ProductDetailsView(product: product)
                    ) {
                        ProductCardView(product: product)
                    }
                }
                
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading: Image(systemName: "line.3.horizontal")
                    .resizable()
                    .frame(width: 18, height: 12, alignment: .center),
                trailing: HStack(spacing: 20) {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20, alignment: .center)
                    
                    Image(systemName: "line.3.horizontal.decrease")
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
            )
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
