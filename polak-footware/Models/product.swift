//
//  product.swift
//  polak-footware
//
//  Created by MAC on 10/13/21.
//

import Foundation


struct Product: Identifiable {
    var id: UUID = UUID()
    var name: String
    var price: Float
    var image: String
    var isFavorite: Bool = false
}

var products: [Product] = [
    
    Product(
        name: "Nike 2017 Blazer",
        price: 2000,
        image: "1",
        isFavorite: true
    ),
    
    Product(
        name: "Nike 2017 Blazer",
        price: 2000,
        image: "2",
        isFavorite: true
    ),
    
    Product(
        name: "Nike 2017 Blazer",
        price: 2000,
        image: "3",
        isFavorite: true
    ),
    
    Product(
        name: "Nike 2017 Blazer",
        price: 2000,
        image: "4",
        isFavorite: true
    ),
    
    Product(
        name: "Nike 2017 Blazer",
        price: 2000,
        image: "5",
        isFavorite: true
    ),
    
    Product(
        name: "Nike 2017 Blazer",
        price: 2000,
        image: "6",
        isFavorite: true
    ),
    
    Product(
        name: "Nike 2017 Blazer",
        price: 2700,
        image: "7",
        isFavorite: true
    ),
    
    Product(
        name: "Nike 2017 Blazer",
        price: 2000,
        image: "8",
        isFavorite: true
    ),
    
    Product(
        name: "Nike 2017 Blazer",
        price: 2000,
        image: "9",
        isFavorite: true
    ),

]
