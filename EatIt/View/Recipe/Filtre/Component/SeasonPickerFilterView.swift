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
        VStack(alignment: .leading) {
            SectionTitleView(title: "Saisons", imageName: "sun.dust.fill")
            Picker("search parameters", selection: $SeasonSearch) {
                Text("Printemps").tag(0)
                Text("Eté").tag(1)
                Text("Automne").tag(2)
                Text("Hiver").tag(3)
                Text("Toutes").tag(4)
            }
            .pickerStyle(.segmented)
            .padding(.horizontal,15)
        }
    }
}

struct SeasonPickerFilterView_Previews: PreviewProvider {
    static var previews: some View {
        SeasonPickerFilterView()
    }
}
