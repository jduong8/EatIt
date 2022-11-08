//
//  FooterProfile+.swift
//  EatIt
//
//  Created by Jonathan Duong on 07/11/2022.
//

import SwiftUI

extension FooterProfileView {
    func profileRecipe(title: String) -> some View {
        VStack(alignment: .leading) {
            Text(title)
                .bold()
                .font(.title2)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(1..<5) { _ in
                        RecipeListButton(isPresented: $isPresented)
                    }
                }
            }
        }
        .padding()
    }
}
