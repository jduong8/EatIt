//
//  HeaderRecipeDetailView.swift
//  EatIt
//
//  Created by Jonathan Duong on 09/11/2022.
//

import SwiftUI

struct HeaderRecipeDetailView: View {
    let recipe: Recipe
    var body: some View {
        VStack {
            Image(recipe.image)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Text(recipe.name)
                .font(.title.bold())
                .padding()
            Text(recipe.description)
                .foregroundColor(.secondary)
        }.listRowBackground(Color.bgLightGreen)
    }
}
