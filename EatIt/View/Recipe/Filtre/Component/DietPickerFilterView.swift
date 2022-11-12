//
//  DietPickerFilterView.swift
//  EatIt
//
//  Created by Jonathan Duong on 10/11/2022.
//

import SwiftUI

struct DietPickerFilterView: View {
    @Binding var dietPicker: Diet
    var body: some View {
        HStack {
            SectionTitleView(title: "Préférences alimentaires", emoji: "😋")
            Spacer()
            Picker("Préférences alimentaires", selection: $dietPicker) {
                ForEach(Diet.allCases, id: \.self) {
                    Text($0.rawValue)
                }
            }
            .pickerStyle(.automatic)
        }
        .padding(.horizontal)
    }
}

struct DietPickerFilterView_Previews: PreviewProvider {
    static var previews: some View {
        DietPickerFilterView(dietPicker: .constant(.tout))
    }
}
