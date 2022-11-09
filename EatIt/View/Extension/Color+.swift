//
//  Color+.swift
//  EatIt
//
//  Created by Jonathan Duong on 07/11/2022.
//

import SwiftUI

extension Color {
    static let bgLightGreen = Color("bgLightGreen")
    static let darkGreen = Color("darkGreen")
    static let mediumGreen = Color("mediumGreen")
    static let lightGreen = Color("lightGreen")
    static let linearGreen = Gradient(colors: [
        Color.darkGreen,
        Color.mediumGreen,
        Color.lightGreen
    ])
}

extension Gradient {
    static let gradientGreen = Gradient(colors: [
        Color.darkGreen,
        Color.mediumGreen,
        Color.lightGreen
    ])
}
