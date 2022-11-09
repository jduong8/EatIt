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
        VStack(alignment: .leading) {
            SectionTitleView(title: "Budgets", imageName: "eurosign")
            Picker("search parameters", selection: $BudgetSearch) {
                Text("Fin de mois").tag(0)
                Text("Au quotidien").tag(1)
                Text("Festif").tag(2)
            }
            .pickerStyle(.segmented)
            .padding(.horizontal,15)
        }
    }
}
