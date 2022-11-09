//
//  CategoryPickerView.swift
//  EatIt
//
//  Created by Jonathan Duong on 09/11/2022.
//

import SwiftUI

struct CategoryPickerView: View {
    @Binding var recipeCategory: RecipeCategory
    var body: some View {
        Picker("Type de recette", selection: $recipeCategory) {
            ForEach(RecipeCategory.allCases, id: \.self) {
                Text($0.rawValue)
            }
        }
        .pickerStyle(.automatic)
    }
}
