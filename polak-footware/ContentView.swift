//
//  ContentView.swift
//  polak-footware
//
//  Created by MAC on 10/12/21.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        ScrollView {
            
            // app bar
            AppBarView()
            
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
            .padding(.top, 20)
            .padding(.bottom, -10)
            
            
            // list of products
            ForEach (products) { product in
               ProductCardView(product: product)
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
