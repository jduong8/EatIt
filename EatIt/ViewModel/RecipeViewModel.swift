//
//  RecipeViewModel.swift
//  EatIt
//
//  Created by Jonathan Duong on 07/11/2022.
//

import SwiftUI

class RecipeViewModel: ObservableObject {
    @Published var recipe: Recipe?
    @Published var recipes: Recipes?
    @Published var user: User?
    
    let endPoint = "http://localhost:8000/recipes/"
}
