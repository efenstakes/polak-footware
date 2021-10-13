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
