//
//  DifficultyPickerView.swift
//  EatIt
//
//  Created by Jonathan Duong on 08/11/2022.
//

import SwiftUI

struct DifficultyPickerView: View {
    @State private var DifficultySearch = 0
    var body: some View {
        VStack {
            Picker("search parameters", selection: $DifficultySearch) {
                Text("Apprenti").tag(0)
                Text("Cuisinier").tag(1)
                Text("Comme un chef").tag(2)
            }
            .pickerStyle(.segmented)
            .padding(.horizontal,15)
        }
    }
}

struct DifficultyPickerView_Previews: PreviewProvider {
    static var previews: some View {
        DifficultyPickerView()
    }
}
