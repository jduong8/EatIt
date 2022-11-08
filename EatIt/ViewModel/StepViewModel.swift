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
    
    let endPoint = "http://localhost:8000/steps/"
}

