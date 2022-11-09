//
//  CostPickerView.swift
//  EatIt
//
//  Created by Jonathan Duong on 09/11/2022.
//

import SwiftUI

struct CostPickerView: View {
    @Binding var costPicker: RecipeCost
    var body: some View {
        Picker("Prix moyen", selection: $costPicker) {
            ForEach(RecipeCost.allCases, id: \.self) {
                Text($0.rawValue)
            }
        }
        .pickerStyle(.automatic)
    }
}
