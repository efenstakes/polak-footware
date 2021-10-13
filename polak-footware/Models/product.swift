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
        price: 900,
        image: "1",
        isFavorite: true
    ),
    
    Product(
        name: "Nike 2017 Blazer",
        price: 210,
        image: "2",
        isFavorite: true
    ),
    
    Product(
        name: "Nike 2017 Blazer",
        price: 400,
        image: "3",
        isFavorite: true
    ),
    
    Product(
        name: "Nike 2017 Blazer",
        price: 450,
        image: "4",
        isFavorite: true
    ),
    
    Product(
        name: "Nike 2017 Blazer",
        price: 500,
        image: "5",
        isFavorite: true
    ),
    
    Product(
        name: "Nike 2017 Blazer",
        price: 300,
        image: "6",
        isFavorite: true
    ),
    
    Product(
        name: "Nike 2017 Blazer",
        price: 270,
        image: "7",
        isFavorite: true
    ),
    
    Product(
        name: "Nike 2017 Blazer",
        price: 200,
        image: "8",
        isFavorite: true
    ),
    
    Product(
        name: "Nike 2017 Blazer",
        price: 700,
        image: "9",
        isFavorite: true
    ),

]
