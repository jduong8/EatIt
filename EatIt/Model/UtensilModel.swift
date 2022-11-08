//
//  UtensilModel.swift
//  EatIt
//
//  Created by Jonathan Duong on 04/11/2022.
//

import SwiftUI

struct Utensil: Identifiable, Codable {
    let id: Int
    let name: String
    let image: String
}

struct Utensils: Codable {
    let utensils: [Utensil]
}
