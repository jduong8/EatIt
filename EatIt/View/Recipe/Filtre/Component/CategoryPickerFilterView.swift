//
//  CategoryPickerFilterView.swift
//  EatIt
//
//  Created by Jonathan Duong on 08/11/2022.
//

import SwiftUI

struct CategoryPickerFilterView: View {
    @State private var CategorySearch = 0
    var body: some View {
        HStack {
            SectionTitleView(title: "Catégories", emoji: "🍽")
            Spacer()
            Picker("search parameters", selection: $CategorySearch) {
                Text("Entrées").tag(0)
                Text("Plats").tag(1)
                Text("Desserts").tag(2)
            }
            .pickerStyle(.automatic)
        }
        .padding(.horizontal)
    }
}

struct CategoryPickerFilterView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryPickerFilterView()
    }
}
