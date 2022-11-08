//
//  RecipeModel.swift
//  EatIt
//
//  Created by Jonathan Duong on 04/11/2022.
//

import SwiftUI

struct Recipes: Codable {
    var recipes: [Recipe]
}

struct Recipe: Identifiable, Codable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let video: String?
    let preparationTime: String
    let cookingTime: String?
    let restTime: String?
    let category: RecipeCategory
    let level: RecipeDifficulty
    let season: RecipeSeason
    let cost: RecipeCost
    let diet: String
    let personCount: Int
    let userId: User.ID
    
        static let recipeExample: [Recipe] = [
            Recipe(id: 1, name: "Ratatouille", description: "Plat végétarien", image: "", video: "", preparationTime: "45 minutes", cookingTime: "45 minutes", restTime: "", category: .plat, level: .facile, season: .automne, cost: .abordable, diet: "Végan", personCount: 2, userId: 1)
        ]

}

enum RecipeCategory: String, CaseIterable, Codable {
    case entree = "Entrée"
    case plat = "Plat"
    case dessert = "Dessert"
}

enum RecipeCost: String, CaseIterable, Codable {
    case finDeMois = "Fin de mois"
    case abordable = "Abordable"
    case sansLimite = "Sans limite"
}

enum RecipeDifficulty: String, CaseIterable, Codable {
    case facile = "Facile"
    case moyen = "Moyen"
    case difficile = "Difficile"
    case commeUnChef = "Comme un chef"
}

enum RecipeSeason: String, CaseIterable, Codable {
    case ete = "Ete"
    case pringtemps = "Pringtemps"
    case automne = "Automne"
    case hiver = "Hiver"
}

