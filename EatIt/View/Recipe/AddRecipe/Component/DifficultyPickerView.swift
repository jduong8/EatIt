//
//  DifficultyPickerView.swift
//  EatIt
//
//  Created by Jonathan Duong on 09/11/2022.
//

import SwiftUI

struct DifficultyPickerView: View {
    @Binding var recipeDifficulty: RecipeDifficulty
    var body: some View {
        Picker("Difficulté", selection: $recipeDifficulty) {
            ForEach(RecipeDifficulty.allCases, id: \.self) {
                Text($0.rawValue)
            }
        }
        .pickerStyle(.automatic)
    }
}
