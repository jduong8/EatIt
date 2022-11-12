//
//  RecipeCellView.swift
//  EatIt
//
//  Created by Jonathan Duong on 12/11/2022.
//

import SwiftUI

struct RecipeCellView: View {
    
    let recipe: Recipe
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width * 0.32, height: UIScreen.main.bounds.height * 0.2)
                .shadow(radius: 5)
                .padding()
                .overlay {
                    Image("test")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.3, alignment: .top)
                }
            Text(recipe.name)
        }
        
        
    }
}

//struct RecipeCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        RecipeCellView()
//    }
//}
