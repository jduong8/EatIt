//
//  FavorisView.swift
//  EatIt
//
//  Created by Jonathan Duong on 07/11/2022.
//

import SwiftUI

struct FavorisView: View {
    
    let recipes: [Recipe] = []
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.bgLightGreen
                    .ignoresSafeArea()
                VStack {
                    if let _ = recipes.isEmpty {
                        Text("Liste vide")
                    }
                }
            }
            .navigationTitle("Mes favoris")
        }
    }
}

struct FavorisView_Previews: PreviewProvider {
    static var previews: some View {
        FavorisView()
    }
}
