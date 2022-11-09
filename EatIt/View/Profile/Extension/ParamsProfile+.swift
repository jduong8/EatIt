//
//  ParamsProfile+.swift
//  EatIt
//
//  Created by Jonathan Duong on 07/11/2022.
//

import SwiftUI

extension ParamsProfileView {
    
    func myTextField(title: String, text: Binding<String>, header: String) -> some View {
        Section {
            TextField(title, text: text)
                .frame(height: 35)
                .textInputAutocapitalization(.never)
        } header: {
            Text(header)
                .bold()
        }
    }
    
    func mySecureField(title: String, text: Binding<String>) -> some View {
        Section {
            SecureField(title, text: text)
                .frame(height: 35)
                .textInputAutocapitalization(.never)
        } header: {
            Text("Ton mot de passe")
                .bold()
        }
    }
    
    func myPicketDiet(header: String) -> some View {
        Section {
            Picker(selection: $selectedDiet) {
                ForEach(Diet.allCases) { tag in
                    Text(tag.rawValue.uppercased())
                        .tag(tag)
                }
            } label: {
                Text(selectedDiet.rawValue.uppercased())
            }

        } header: {
            Text("Diet")
                .bold()
        }
    }
}
