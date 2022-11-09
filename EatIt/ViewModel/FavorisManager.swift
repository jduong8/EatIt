//
//  FavorisManager.swift
//  EatIt
//
//  Created by Jonathan Duong on 07/11/2022.
//

import SwiftUI

class FavorisManager: ObservableObject {
    
    @Published var favorites = [Recipe]()
    
}
