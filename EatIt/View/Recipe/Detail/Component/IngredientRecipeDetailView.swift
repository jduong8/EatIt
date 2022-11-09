//
//  IngredientRecipeDetailView.swift
//  EatIt
//
//  Created by Jonathan Duong on 09/11/2022.
//

import SwiftUI

struct IngredientRecipeDetailView: View {
    
   
    @State private var value = 2
    let recipe: Recipe
    let step = 1
    let range = 1...9
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text("Ingredients")
                    .font(.title2.bold())
                Text("for \(value)")
                    .font(.title2.bold())
                Image(systemName: "fork.knife")
                    .fontWeight(.bold)
                Spacer()
                Stepper("Number of people", value: $value, in: range, step: step)
                    .frame(width: 50, height: 50)
                    .padding(8)
            }
            VStack(alignment: .leading) {
                ForEach(recipe.ingredients) { ingredient in
                    HStack(alignment: .center, spacing: 5) {
                        Image("")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 50)
                            .clipShape(Circle())
                        Text("")
                    }
                }
            }
        }
        .padding()
        .listRowBackground(Color.bgLightGreen)
    }
}
