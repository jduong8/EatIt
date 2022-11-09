//
//  DietPickerView.swift
//  EatIt
//
//  Created by Jonathan Duong on 09/11/2022.
//

import SwiftUI

struct DietPickerView: View {
    @Binding var dietPicker: Diet
    var body: some View {
        Picker("Préférences alimentaires", selection: $dietPicker) {
            ForEach(Diet.allCases, id: \.self) {
                Text($0.rawValue)
            }
        }
        .pickerStyle(.automatic)
    }
}
