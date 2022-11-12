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
        NavigationView {
            ZStack {
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
                                RecipeCellView(recipe: Recipe.recipeExample[0])
                                RecipeCellView(recipe: Recipe.recipeExample[0])
                                RecipeCellView(recipe: Recipe.recipeExample[0])
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
                                RecipeCellView(recipe: Recipe.recipeExample[0])
                                RecipeCellView(recipe: Recipe.recipeExample[0])
                                RecipeCellView(recipe: Recipe.recipeExample[0])
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
                                RecipeCellView(recipe: Recipe.recipeExample[0])
                                RecipeCellView(recipe: Recipe.recipeExample[0])
                                RecipeCellView(recipe: Recipe.recipeExample[0])
                            }
                            .padding(35)
                        }
                        
                    }
                }
                
            }
            .navigationTitle("Categories")
            
        }
    }
}

struct RecipeCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCategoryView()
    }
}
