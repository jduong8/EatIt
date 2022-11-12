//
//  DifficultyPickerFilterView.swift
//  EatIt
//
//  Created by Jonathan Duong on 08/11/2022.
//

import SwiftUI

struct DifficultyPickerFilterView: View {
    @State private var DifficultySearch = 0
    var body: some View {
        HStack {
            SectionTitleView(title: "Difficultés", emoji: "🏋️‍♀️")
            Spacer()
            Picker("search parameters", selection: $DifficultySearch) {
                Text("Apprenti").tag(0)
                Text("Cuisinier").tag(1)
                Text("Comme un chef").tag(2)
            }
            .pickerStyle(.automatic)
        }
        .padding(.horizontal)
    }
}
