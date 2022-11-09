//
//  InformationRecipeView.swift
//  EatIt
//
//  Created by Jonathan Duong on 09/11/2022.
//

import SwiftUI

struct InformationRecipeView: View {
    let recipe: Recipe
    var body: some View {
        VStack{
            HStack {
                IconsExtractedView(systemName: "clock.arrow.circlepath", indicator: String(recipe.preparationTime))
                IconsExtractedView(systemName: "cooktop", indicator: String(recipe.cookingTime ?? ""))
                IconsExtractedView(systemName: "stopwatch", indicator: String(recipe.restTime ?? ""))
            }
            HStack {
                IconsExtractedView(systemName: "star", indicator: recipe.level.rawValue)
                IconsExtractedView(systemName: "bookmark", indicator: recipe.diet.rawValue)
                IconsExtractedView(systemName: "leaf", indicator: recipe.season.rawValue)
                IconsExtractedView(systemName: "eurosign", indicator: recipe.cost.rawValue)
            }
        }
        .padding(2)
        .foregroundColor(.white)
        .frame(maxWidth: .infinity)
        .font(.subheadline)
        .fontWeight(.bold)
        .background(Color.linearGreen)
        .listRowBackground(Color.bgLightGreen)
    }
}
