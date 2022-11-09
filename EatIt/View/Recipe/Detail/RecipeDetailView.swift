//
//  RecipeDetailView.swift
//  EatIt
//
//  Created by Jonathan Duong on 04/11/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    
    @StateObject var favorisManager = FavorisManager()
    let recipe: Recipe
    
    var body: some View {
        List {
                HeaderRecipeDetailView(recipe: Recipe.recipeExample[0])
                InformationRecipeView(recipe: Recipe.recipeExample[0])
            if !recipe.ingredients.isEmpty {
                    IngredientRecipeDetailView(recipe: Recipe.recipeExample[0])
            }
            if !recipe.steps.isEmpty {
                    StepRecipeDetailView(recipe: Recipe.recipeExample[0])
            }
        }
        .listStyle(.plain)
        .background(Color.bgLightGreen)
        .scrollContentBackground(.hidden)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RecipeDetailView(recipe: Recipe.recipeExample[0])
        }
    }
}

