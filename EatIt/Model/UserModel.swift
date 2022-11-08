//
//  UserModel.swift
//  EatIt
//
//  Created by Jonathan Duong on 04/11/2022.
//
import SwiftUI

struct Users: Codable {
    var users: [User]
}

struct User: Codable, Identifiable {
    let id: Int
    let name: String
    let diet: myDiet
    let email: String
    let password: String
    let picture: String?
//    let recipe: [Recipe]
    
    
    static let userExample = User(id: 1, name: "Valentin", diet: .sansGluten, email: "valentin@eatit.com", password: "password", picture: "exampleProfile")
}

enum myDiet: String, CaseIterable, Identifiable, Codable {
    case vegan = "Vegan"
    case vegetarien = "Vegetarien"
    case sansLactose = "Sans lactose"
    case sansGluten = "Sans gluten"
    case sansPorc = "Sans porc"
    case sansPoisson = "Sans poisson"
    case tout = "Tout"
    
    var id: String { self.rawValue }
}
