//
//  HomeCategoryView.swift
//  EatIt
//
//  Created by CHRISTOPHE LEHOUSSINE on 04/11/2022.
//

import SwiftUI

struct RecipeCategoryView: View {
    
    // @State private var searchText = ""
    
    var body: some View {
        ZStack{
            Color.bgLightGreen
                .edgesIgnoringSafeArea(.all)
            ScrollView{
                VStack{
                    AddRecipeButtonView()
                    HStack{
                        Text("Entrées")
                            .font(.largeTitle)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal)
                        Spacer()
                    }
                    ScrollView(.horizontal){
                        HStack{
                            RecipeCell(recipe: Recipe.recipeExample[0])
                            RecipeCell(recipe: Recipe.recipeExample[0])
                            RecipeCell(recipe: Recipe.recipeExample[0])
                        }
                        .padding(35)
                    }
                    HStack{
                        Text("Plats")
                            .font(.largeTitle)
                            .padding(.horizontal)
                        Spacer()
                    }
                    ScrollView(.horizontal){
                        HStack{
                            RecipeCell(recipe: Recipe.recipeExample[0])
                            RecipeCell(recipe: Recipe.recipeExample[0])
                            RecipeCell(recipe: Recipe.recipeExample[0])
                        }
                        .padding(30)
                    }
                    HStack{
                        Text("Desserts")
                            .font(.largeTitle)
                            .padding(.horizontal)
                        Spacer()
                    }
                    ScrollView(.horizontal){
                        HStack{
                            RecipeCell(recipe: Recipe.recipeExample[0])
                            RecipeCell(recipe: Recipe.recipeExample[0])
                            RecipeCell(recipe: Recipe.recipeExample[0])
                        }
                        .padding(35)
                    }
                    
                }
                
            }
            
        }
    }
}

struct RecipeCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCategoryView()
    }
}

struct RecipeCell: View {
    
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
