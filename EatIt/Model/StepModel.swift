//
//  StepModel.swift
//  EatIt
//
//  Created by Jonathan Duong on 04/11/2022.
//

import SwiftUI

struct Step: Codable, Identifiable {
    let id: Int
    let number: String
    let description: String
    let recipeId: Int
}

struct Steps: Codable {
    let steps: [Step]
}
