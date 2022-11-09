//
//  IconsExtractedView.swift
//  EatIt
//
//  Created by Jonathan Duong on 09/11/2022.
//

import SwiftUI

struct IconsExtractedView: View {
    var systemName: String
    var indicator: String
    
    var body: some View {
        VStack(spacing: 5) {
            Image(systemName: systemName)
            Text(indicator)
                .font(.caption)
        }
        .padding(10)
    }
}
