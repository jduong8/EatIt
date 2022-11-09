//
//  StepRecipeDetailView.swift
//  EatIt
//
//  Created by Jonathan Duong on 09/11/2022.
//

import SwiftUI

struct StepRecipeDetailView: View {
    let recipe: Recipe
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text("Method")
                    .font(.title2.bold())
            }
            VStack(alignment: .leading, spacing: 1) {
                ForEach(recipe.steps) { step in
                    VStack(alignment: .leading, spacing: 6) {
                        Text(step.number)
                            .font(.title3.bold())
                        Text(step.description)
                            .padding(.bottom)
                    }
                }
            }
        }
        .padding()
        .listRowBackground(Color.bgLightGreen)
    }
}
