//
//  AddRecipesView.swift
//  EatIt
//
//  Created by Jonathan Duong on 09/11/2022.
//

import SwiftUI

struct AddRecipesView: View {
    
    @StateObject var recipeVM = RecipeViewModel()
    @State var recipe: Recipe
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct AddRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipesView(recipe: Recipe.recipeExample[0])
    }
}
