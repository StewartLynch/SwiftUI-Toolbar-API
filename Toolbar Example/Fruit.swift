//
//  Fruit.swift
//  Toolbar Example
//
//  Created by Stewart Lynch on 2020-09-16.
//

import Foundation

struct Fruit: Identifiable {
    var id = UUID()
    let name: String
    let emoji: String

    static let fruit = [
        Fruit.init(name: "Apple", emoji: "🍎"),
        Fruit.init(name: "Orange", emoji: "🟠"),
        Fruit.init(name: "Lemon", emoji: "🍋"),
        Fruit.init(name: "Kiwi", emoji: "🥝"),
        Fruit.init(name: "Banana", emoji: "🍌"),
        Fruit.init(name: "Pear", emoji: "🍐"),
        Fruit.init(name: "Cherry", emoji: "🍒"),
        Fruit.init(name: "Strawberry", emoji: "🍓"),
        Fruit.init(name: "Pineapple", emoji: "🍍"),
        Fruit.init(name: "Peach", emoji: "🍑"),
        Fruit.init(name: "Grapes", emoji: "🍇"),
    ]
}
