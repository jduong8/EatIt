//
//  FooterProfileView.swift
//  EatIt
//
//  Created by Jonathan Duong on 04/11/2022.
//

import SwiftUI

struct FooterProfileView: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            profileRecipe(title: "Mes entrées")
            profileRecipe(title: "Mes plats")
            profileRecipe(title: "Mes desserts")
        }
    }
}

struct RecipeListButton: View {
    @Binding var isPresented: Bool
    var body: some View {
        Button {
            self.isPresented.toggle()
        } label: {
            NavigationLink(destination: RecipeDetailView()) {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 160, height: 150)
            }
        }
        
    }
}

struct FooterProfileView_Previews: PreviewProvider {
    static var previews: some View {
        FooterProfileView(isPresented: .constant(false))
    }
}
