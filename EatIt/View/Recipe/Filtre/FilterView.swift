//
//  FilterView.swift
//  EatIt
//
//  Created by Jonathan Duong on 08/11/2022.
//

import SwiftUI

struct FilterView: View {
    
    @State private var searchText = ""
    @State private var dietPicker: Diet = .tout
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.bgLightGreen
                    .ignoresSafeArea()
                VStack(alignment: .leading) {
                    CategoryPickerFilterView()
                    DifficultyPickerFilterView()
                    BudgetPickerFilterView()
                    SeasonPickerFilterView()
                    DietPickerFilterView(dietPicker: $dietPicker)
                }
            }
            .searchable(text: $searchText, prompt: "Recette, catégorie, difficulté, budget, saison...")
            .navigationTitle("Recherche")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                trailing:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("Valider")
                    }))
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
