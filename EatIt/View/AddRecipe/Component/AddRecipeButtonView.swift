//
//  AddRecipeButtonView.swift
//  EatIt
//
//  Created by Jonathan Duong on 09/11/2022.
//

import SwiftUI

struct AddRecipeButtonView: View {
    
    var body: some View {
        Button {

        } label: {
            HStack{
                VStack {
                    Text("Ajouter ma propre \nRecette")
                        .font(.title2)
                        .foregroundColor(Color.white)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.trailing)
                    Image(systemName:   "plus.circle")
                        .padding(.horizontal)
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .padding(2)
                }
                Image("png")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100.0, height: 100.0)
                    .cornerRadius(15)
            } .padding(.vertical, 20.0)
                .padding(.horizontal, 20.0)
                .background(
                    LinearGradient(gradient: .gradientGreen, startPoint: .leading, endPoint: .trailing)
                )
                .cornerRadius(15)
                .shadow(radius: 6)
        }
    }
}

struct AddRecipeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeButtonView()
    }
}
