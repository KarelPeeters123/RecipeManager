//
//  Recipe.swift
//  RecipeManager
//
//  Created by Karel Peeters on 28/03/2021.
//

import Foundation

struct Recipe {
    var id: String;
    var name: String;
    var time: Int;
    var difficulty: String;
    var ingredients: [Ingredient]
    var instructions: [String]
}

struct Ingredient {
    var quantity: Int;
    var unit: String;
    var name: String;
}
