//
//  FilterView+.swift
//  EatIt
//
//  Created by Jonathan Duong on 09/11/2022.
//

import SwiftUI

struct SectionTitleView: View {
    
    let title: String
    let imageName: String
    
    var body: some View {
        HStack{
            Text(title)
                .font(.title2)
                .foregroundColor(.black)
                .padding([.top, .leading], 15)
            Image(systemName: imageName)
                .font(.title2)
                .foregroundColor(.black)
                .padding([.top], 15)
        }
    }
}
