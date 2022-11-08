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
            Color.bgLightGreen.edgesIgnoringSafeArea(.all)
            ScrollView{
                VStack{
                    
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
                            LinearGradient(
                                colors: [Color("darkGreen"), Color("mediumGreen"), Color("lightGreen")],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .cornerRadius(15)
                        .shadow(radius: 6)
                    
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
extension Color {
    
    static let bgLightGreen = Color("bgLightGreen")
}
extension Color {
    
    static let bgDarkGreen = Color("bgDarkGreen")
}
