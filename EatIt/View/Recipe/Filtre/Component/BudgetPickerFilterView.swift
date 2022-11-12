//
//  BudgetPickerView.swift
//  EatIt
//
//  Created by Jonathan Duong on 08/11/2022.
//

import SwiftUI

struct BudgetPickerFilterView: View {
    @State private var BudgetSearch = 0
    var body: some View {
        HStack {
            SectionTitleView(title: "Budgets", emoji: "💰")
            Spacer()
            Picker("search parameters", selection: $BudgetSearch) {
                Text("Fin de mois").tag(0)
                Text("Au quotidien").tag(1)
                Text("Festif").tag(2)
            }
            .pickerStyle(.automatic)
        }
        .padding(.horizontal)
    }
}

