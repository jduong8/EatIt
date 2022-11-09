//
//  RecipeIngredientModel.swift
//  EatIt
//
//  Created by Jonathan Duong on 04/11/2022.
//

import SwiftUI

struct RecipeIngredient: Codable {
    let id: Int
    let amount: Double
    let recipeId: Int
    let ingredientId: Int
}
