//
//  StepViewModel.swift
//  EatIt
//
//  Created by Jonathan Duong on 07/11/2022.
//

import SwiftUI

class StepViewModel: ObservableObject {
    @Published var step: Step?
    @Published var steps: Steps?
    let recipe: Recipe
    
    init(step: Step? = nil, steps: Steps? = nil, recipe: Recipe) {
        self.step = step
        self.steps = steps
        self.recipe = recipe
    }
    
    let endPoint = "https://server-eat-it-app.herokuapp.com/steps/"
}

