//
//  FavorisManager.swift
//  EatIt
//
//  Created by Jonathan Duong on 07/11/2022.
//

import SwiftUI

class FavorisManager: ObservableObject {
    
    @Published var favorites = [Recipe]()
    
    
//    Order favorites by first, second and so on
    func moveRecipe(from offsets: IndexSet, to destination: Int) {
        self.favorites.move(fromOffsets: offsets, toOffset: destination)
    }
    
    func addFavorite(recipe: Recipe) {
        self.favorites.append(recipe)
    }
    
    func removefavorite(at offsets: IndexSet) {
        self.favorites.remove(atOffsets: offsets)
    }
    // Remove recipe that's already in favorites
    func deleteFavoriteInArray(recipe: Recipe) {
        self.favorites.removeAll { $0.id == recipe.id }
    }
}
