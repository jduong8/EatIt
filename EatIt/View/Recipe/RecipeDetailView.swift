//
//  RecipeDetailView.swift
//  EatIt
//
//  Created by Jonathan Duong on 04/11/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    
    @StateObject var favorisManager = FavorisManager()
    let recipe: Recipe
    @State private var value = 2
    let step = 1
    let range = 1...9
    
    var body: some View {
        Text("DetailView")
//        List {
//            VStack {
//                if let recipe = recipe.image {
//                    Image(recipe)
//                        .resizable()
//                    //                        .scaledToFit()
//                        .scaledToFill()
//                        .frame(maxWidth: .infinity, maxHeight: .infinity)
//                        .clipShape(RoundedRectangle(cornerRadius: 10))
//                }
//                else {
//                    ZStack {
//                        RoundedRectangle(cornerRadius: 10)
//                            .foregroundColor(.secondary)
//                            .frame(maxHeight: 350)
//                        Text("Yum Recipes")
//                            .font(.title3)
//                            .foregroundStyle(.secondary)
//                    }
//                }
//
//                HStack {
//                    Text(recipe.name)
//                        .font(.title.bold())
//                }
//                .padding()
//
//                HStack {
//                    if !recipe.description.isEmpty {
//                        Text(recipe.description)
//                            .foregroundColor(.secondary)
//                    }
//                }
//
//            }
//
//            VStack(alignment: .center){
//                HStack(alignment: .center) {
//                    IconsExtractedView(systemName: "clock.arrow.circlepath", indicator: String(recipe.preparationTime) + " min")
//                    IconsExtractedView(systemName: "cooktop", indicator: String(recipe.cookingTime ?? "") + " min")
//                    IconsExtractedView(systemName: "stopwatch", indicator: String(recipe.restTime ?? "") + " min")
//                }
//                HStack(alignment: .center) {
//                    IconsExtractedView(systemName: "star", indicator: recipe.level.rawValue)
//                    IconsExtractedView(systemName: "bookmark", indicator: recipe.diet)
//                    IconsExtractedView(systemName: "leaf", indicator: recipe.season.rawValue)
//                    IconsExtractedView(systemName: "eurosign", indicator: recipe.cost.rawValue)
//                }
//            }
//            .padding(2)
//            .foregroundColor(.white)
//            .frame(maxWidth: .infinity)
//            .font(.subheadline)
//            .fontWeight(.bold)
//            .multilineTextAlignment(.center)
//            .background(
//                LinearGradient(
//                    colors: [Color("darkGreen"), Color("mediumGreen"), Color("lightGreen")],
//                    startPoint: .leading,
//                    endPoint: .trailing
//                )
//            )
//
//            if !recipe.ingredients.isEmpty {
//                VStack(alignment: .leading, spacing: 15) {
//                    HStack {
//                        Text("Ingredients")
//                            .font(.title2.bold())
//                        Text("for \(value)")
//                            .font(.title2.bold())
//                        Image(systemName: "fork.knife")
//                            .fontWeight(.bold)
//                        Spacer()
//                        Stepper("Number of people", value: $value, in: range, step: step)
//                            .frame(width: 50, height: 50)
//                            .padding(8)
//                    }
//                    VStack(alignment: .leading) {
//                        ForEach(recipe.ingredients, id: \.self) { ingredient in
//                            HStack(alignment: .center, spacing: 5) {
//                                Image("")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(maxWidth: 50)
//                                    .clipShape(Circle())
//                                Text(ingredient.ingredientName)
//                            }
//                        }
//                    }
//                }
//                .padding()
//            }
//
//            if !recipe.step.isEmpty {
//                VStack(alignment: .leading, spacing: 15) {
//                    HStack {
//                        Text("Method")
//                            .font(.title2.bold())
//                    }
//                    VStack(alignment: .leading, spacing: 1) {
//                        ForEach(recipe.step, id: \.self) { step in
//                            VStack(alignment: .leading, spacing: 6) {
//                                Text(step.title)
//                                    .font(.title3.bold())
//                                Text(step.description)
//                                    .padding(.bottom)
//                            }
//                        }
//                    }
//                }
//                .padding()
//            }
//        }
//        .listStyle(.plain)
//        .background(Color("paleGreen"))
//        .scrollContentBackground(.hidden)
//
//        .toolbar {
//            ToolbarItem(placement: .navigationBarTrailing) {
//                Button(action: {
////                    favorisManager.deleteOrRemoveFavorite(recipe: recipe)
//                }, label: {
//                    Label("Add to favorites", systemImage: favorisManager.favorites.contains(recipe) ? "heart.fill" : "heart")
//                        .font(.title3)
//                })
//                //                .foregroundColor(.purple)
//                .foregroundStyle(
//                    LinearGradient(
//                        colors: [Color("darkGreen"), Color("mediumGreen"), Color("lightGreen")],
//                        startPoint: .leading,
//                        endPoint: .trailing
//                    )
//                )
//            }
//        }
//        .navigationBarTitleDisplayMode(.inline)
        //        .ignoresSafeArea()
    }
}


struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RecipeDetailView(recipe: Recipe.recipeExample[0])
        }
    }
}

struct IconsExtractedView: View {
    var systemName: String
    var indicator: String
    
    var body: some View {
        VStack(spacing: 5) {
            Image(systemName: systemName)
            Text(indicator)
        }
        .padding(10)
    }
}
