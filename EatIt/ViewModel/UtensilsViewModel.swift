//
//  UtensilsViewModel.swift
//  EatIt
//
//  Created by Jonathan Duong on 07/11/2022.
//

import SwiftUI

class UtensilViewModel: ObservableObject {
    @Published var utensil: Utensil?
    @Published var utensils: Utensils?
    
    let endPoint = "https://server-eat-it-app.herokuapp.com/utensils/"
}

