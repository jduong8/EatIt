//
//  SeasonPickerView.swift
//  EatIt
//
//  Created by Jonathan Duong on 09/11/2022.
//

import SwiftUI

struct SeasonPickerView: View {
    @Binding var seasonPicker: RecipeSeason
    var body: some View {
        Picker("Saison", selection: $seasonPicker) {
            ForEach(RecipeSeason.allCases, id: \.self) {
                Text($0.rawValue)
            }
        }
        .pickerStyle(.automatic)
    }
}
