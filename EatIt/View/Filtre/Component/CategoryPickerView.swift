//
//  CategoryPickerView.swift
//  EatIt
//
//  Created by Jonathan Duong on 08/11/2022.
//

import SwiftUI

struct CategoryPickerView: View {
    @State private var CategorySearch = 0
    var body: some View {
        VStack {
            Picker("search parameters", selection: $CategorySearch) {
                Text("Entrées").tag(0)
                Text("Plats").tag(1)
                Text("Desserts").tag(2)
            }
            .pickerStyle(.segmented)
            .padding(.horizontal,15)
        }
    }
}

struct CategoryPickerView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryPickerView()
    }
}
