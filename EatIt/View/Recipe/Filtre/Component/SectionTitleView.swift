//
//  FilterView+.swift
//  EatIt
//
//  Created by Jonathan Duong on 09/11/2022.
//

import SwiftUI

struct SectionTitleView: View {
    
    let title: String
    let emoji: String
    
    var body: some View {
        HStack{
            Text(title)
            Text(emoji)
                .font(.title2)
        }
        .foregroundColor(.black)
    }
}
