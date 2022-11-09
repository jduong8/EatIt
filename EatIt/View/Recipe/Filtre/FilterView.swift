//
//  FilterView.swift
//  EatIt
//
//  Created by Jonathan Duong on 08/11/2022.
//

import SwiftUI

struct FilterView: View {
    
    @State private var searchText = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.bgLightGreen
                    .ignoresSafeArea()
                
                VStack (alignment: .leading) {
                    Text("")
                        .searchable(text: $searchText, prompt: "Recette, catégorie, difficulté, budget, saison...")
                        .bold()
                        .foregroundColor(.black)
                        .font(.system(size: 15))
                        .padding(.leading)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading) {
                            CategoryPickerFilterView()
                            DifficultyPickerFilterView()
                            BudgetPickerFilterView()
                            SeasonPickerFilterView()
                        }
                    }
                }
            }
            .searchable(text: $searchText)
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
