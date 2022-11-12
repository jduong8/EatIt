//
//  SeasonPickerView.swift
//  EatIt
//
//  Created by Jonathan Duong on 08/11/2022.
//

import SwiftUI

struct SeasonPickerFilterView: View {
    @State private var SeasonSearch = 0
    var body: some View {
        HStack {
            SectionTitleView(title: "Saisons", emoji: "☀️")
            Spacer()
            Picker("search parameters", selection: $SeasonSearch) {
                Text("Printemps").tag(0)
                Text("Eté").tag(1)
                Text("Automne").tag(2)
                Text("Hiver").tag(3)
                Text("Toutes").tag(4)
            }
            .pickerStyle(.automatic)
        }
        .padding(.horizontal)
    }
}

struct SeasonPickerFilterView_Previews: PreviewProvider {
    static var previews: some View {
        SeasonPickerFilterView()
    }
}

/*        HStack {
 SectionTitleView(title: "Catégories", imageName: "menucard")
 Spacer()
 Picker("search parameters", selection: $CategorySearch) {
     Text("Entrées").tag(0)
     Text("Plats").tag(1)
     Text("Desserts").tag(2)
 }
 .pickerStyle(.automatic)
}
.padding(.horizontal)*/
