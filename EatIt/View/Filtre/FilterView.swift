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
                    .edgesIgnoringSafeArea(.all)
                
                VStack (alignment: .leading) {
                    Text("")
                        .searchable(text: $searchText, prompt: "Recette, catégorie, difficulté, budget, saison...")
                        .bold()
                        .foregroundColor(.black)
                        .font(.system(size: 15))
                        .padding(.leading)
                
                    
                    VStack {
                    }
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Catégories")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .padding([.top, .leading], 15)
                                Image(systemName: "menucard")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    .padding([.top], 15)
                            }
                            CategoryPickerView()
                            
                            HStack {
                                Text("Difficultés")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .padding([.top, .leading], 15)
                                Image(systemName: "chart.bar.fill")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    .padding([.top], 15)
                            }
                            DifficultyPickerView()
                            
                            HStack {Text("Budgets")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .padding([.top, .leading], 15)
                                Image(systemName: "eurosign")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    .padding([.top], 15)
                            }
                            BudgetPickerView()
                            
                            HStack{
                                Text("Saisons")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .padding([.top, .leading], 15)
                                Image(systemName:"sun.dust.fill")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    .padding([.top], 15)
                            }
                            SeasonPickerView()
                        }
                    }
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Recherche")
            .navigationBarTitleDisplayMode(.inline)
            // Bouton pour fermer l'écran modal dans la navigation bar
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
