//
//  AddRecipeView.swift
//  EatIt
//
//  Created by Jonathan Duong on 09/11/2022.
//

import SwiftUI

struct AddRecipeView: View {
    @State var recipe: Recipe
    var body: some View {
        Text("H")
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView(recipe: Recipe.recipeExample[0])
    }
}
