//
//  MasterView.swift
//  EatIt
//
//  Created by Jonathan Duong on 04/11/2022.
//

import SwiftUI

struct MasterView: View {
    var body: some View {
        TabView {
            RecipeCategoryView()
                .tabItem {
                    Text("Categories")
                    Image(systemName: "book")
                }
            FavorisView()
                .tabItem {
                    Text("Favoris")
                    Image(systemName: "heart")
                }
            ProfileView()
                .tabItem {
                    Text("Profile")
                    Image(systemName: "person")
                }
        }

    }
}

struct MasterView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}
