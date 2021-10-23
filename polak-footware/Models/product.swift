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
        image: "10",
        isFavorite: false
    ),
    
    Product(
        name: "Nike 2018 Blazer",
        price: 210,
        image: "2",
        isFavorite: true
    ),
    
    Product(
        name: "Nike 2019 Blazer",
        price: 400,
        image: "3",
        isFavorite: false
    ),
    
    Product(
        name: "Nike 2020 Blazer",
        price: 450,
        image: "4",
        isFavorite: false
    ),
    
    Product(
        name: "Nike 2021 Blazer",
        price: 500,
        image: "5",
        isFavorite: false
    ),
    
    Product(
        name: "Nike 2017 Blazer",
        price: 300,
        image: "6",
        isFavorite: false
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
        isFavorite: false
    ),
    
    Product(
        name: "Nike 2017 Blazer",
        price: 700,
        image: "9",
        isFavorite: true
    ),

]
