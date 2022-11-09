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
    let diet: Diet
    let email: String
    let password: String
    let picture: String?
//    let recipe: [Recipe]
    
    
    static let userExample = User(id: 1, name: "Valentin", diet: .sansGluten, email: "valentin@eatit.com", password: "password", picture: "exampleProfile")
}
