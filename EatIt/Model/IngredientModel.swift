//
//  IngredientModel.swift
//  EatIt
//
//  Created by Jonathan Duong on 04/11/2022.
//

import SwiftUI

struct Ingredient: Codable, Identifiable {
    let id: Int
    let name: String
    let unit: String
    let image: String
    let recipeIngredient: RecipeIngredient
}

struct Ingredients: Codable {
    let ingredients: [Ingredient]
}
