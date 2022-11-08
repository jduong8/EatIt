//
//  SeasonPickerView.swift
//  EatIt
//
//  Created by Jonathan Duong on 08/11/2022.
//

import SwiftUI

struct SeasonPickerView: View {
    @State private var SeasonSearch = 0
    var body: some View {
        VStack {
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

struct SeasonPickerView_Previews: PreviewProvider {
    static var previews: some View {
        SeasonPickerView()
    }
}
