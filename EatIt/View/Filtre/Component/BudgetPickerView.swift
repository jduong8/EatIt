//
//  BudgetPickerView.swift
//  EatIt
//
//  Created by Jonathan Duong on 08/11/2022.
//

import SwiftUI

struct BudgetPickerView: View {
    @State private var BudgetSearch = 0
    var body: some View {
        VStack {
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

struct BudgetPickerView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetPickerView()
    }
}
