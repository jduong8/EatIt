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
    var id: Int
    var name: String
    var description: String
    var image: String
    var video: String?
    var preparationTime: String
    var cookingTime: String?
    var restTime: String?
    var category: RecipeCategory
    var level: RecipeDifficulty
    var season: RecipeSeason
    var cost: RecipeCost
    var diet: Diet
    var personCount: Int
    var userId: Int
    var ingredients: [Ingredient]
    var utensils: [Utensil]
    var steps: [Step]
    
    static let recipeExample: [Recipe] =
    [
        Recipe(id: 1, name: "Banana Bread", description: "Banana Bread is a moist and sweet quick bread made from mashed bananas", image: "banana_bread", video: "", preparationTime: "20 min", cookingTime: "30 min", restTime: "0 min", category: .dessert, level: .facile, season: .automne, cost: .abordable, diet: .vegetarien, personCount: 2, userId: 0, ingredients: [
            Ingredient(id: 1, name: "ail", unit: "un test", image: "ail", recipeIngredient: RecipeIngredient(id: 1, amount: 2.5, recipeId: 1, ingredientId: 1)
                      )], utensils: [
                        Utensil(id: 1, name: "couteau", image: "", recipeUtensil: RecipeUtensil(amount: 1, recipeId: 1, utensilId: 1))
                      ], steps: [
                        Step(id: 1, number: "Step n°1", description: "Hello this is a test", recipeId: 1),
                        Step(id: 2, number: "Step n°2", description: "Second test", recipeId: 1)]),
        Recipe(id: 2, name: "", description: "", image: "", video: "", preparationTime: "", cookingTime: "", restTime: "", category: .dessert, level: .facile, season: .automne, cost: .abordable, diet: .vegetarien, personCount: 1, userId: 1, ingredients: [
            Ingredient(id: 2, name: "", unit: "", image: "", recipeIngredient: RecipeIngredient(id: 2, amount: 0, recipeId: 2, ingredientId: 2)
                      )], utensils: [
                        Utensil(id: 2, name: "", image: "", recipeUtensil: RecipeUtensil(amount: 1, recipeId: 2, utensilId: 2))
                      ], steps: [
                        Step(id: 1, number: "", description: "", recipeId: 2),
                      Step(id: 2, number: "", description: "", recipeId: 2)])
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
    case ete = "Eté"
    case pringtemps = "Pringtemps"
    case automne = "Automne"
    case hiver = "Hiver"
}

enum Diet: String, CaseIterable, Identifiable, Codable {
    case vegan = "Vegan"
    case vegetarien = "Végétarien"
    case sansLactose = "Sans lactose"
    case sansGluten = "Sans gluten"
    case sansPorc = "Sans porc"
    case sansPoisson = "Sans poisson"
    case tout = "Tout"
    
    var id: String { self.rawValue }
}


