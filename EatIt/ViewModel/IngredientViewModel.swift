//
//  IngredientViewModel.swift
//  EatIt
//
//  Created by Jonathan Duong on 07/11/2022.
//

import SwiftUI

class IngredientViewModel: ObservableObject {
    @Published var ingredient: Ingredient?
    @Published var ingredients: Ingredients?
    
    let endPoint = "http://localhost:8000/ingredients/"
}

