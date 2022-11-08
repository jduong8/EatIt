//
//  RecipeViewModel+.swift
//  EatIt
//
//  Created by Jonathan Duong on 07/11/2022.
//

import SwiftUI

extension RecipeViewModel {
    /*---------------- GetRequest for RECIPE ------------------*/
    func getRecipe() async throws -> Recipes {
        guard let url = URL(string: "\(endPoint)index")
        else {
            fatalError("Missing URL")
        }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200
        else {
            fatalError("Error while fetching data.")
        }
        let decoder = JSONDecoder()
        let decodedRecipes = try decoder.decode(Recipes.self, from: data)
        
        return decodedRecipes
    }
    
    /*---------------- PostRequest ------------------*/
    func postRecipe(_: Recipe) async throws -> Recipe {
        guard let url = URL(string: "\(endPoint)index")
        else {
            fatalError("Missing URL")
        }
        
        let body: [String: Any] = [
            "name": recipe?.name ?? "_",
            "description": recipe?.description ?? "_",
            "image": recipe?.image ?? "",
            "video": recipe?.video ?? "none",
            "preparationTime": recipe?.preparationTime ?? "",
            "cookingTime": recipe?.cookingTime ?? "",
            "restTime": recipe?.restTime ?? "",
            "category": RecipeCategory.RawValue(),
            "level": RecipeDifficulty.RawValue(),
            "season": RecipeSeason.RawValue(),
            "cost": RecipeCost.RawValue(),
            "diet": recipe?.diet ?? "",
            "personCount": recipe?.personCount ?? 1,
            "userId": recipe?.userId ?? 1
        ]
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.httpBody = try? JSONSerialization.data(withJSONObject: body)
        let (data, _) = try await URLSession.shared.data(for: urlRequest)
        
        let decoder = JSONDecoder()
        let decodedRecipe = try decoder.decode(Recipe.self, from: data)
        
        return decodedRecipe
    }
    
    /*---------------- PutRequest ------------------*/
    func updateRecipe(id: Int, _: Recipe) async throws -> Recipe {
        guard let url = URL(string: "\(endPoint)\(id)")
        else {
            fatalError("Missing URL")
        }
        
        let body: [String : Any] = [
            "name": recipe?.name ?? "_",
            "description": recipe?.description ?? "_",
            "image": recipe?.image ?? "",
            "video": recipe?.video ?? "none",
            "preparationTime": recipe?.preparationTime ?? "",
            "cookingTime": recipe?.cookingTime ?? "",
            "restTime": recipe?.restTime ?? "",
            "category": RecipeCategory.RawValue(),
            "level": RecipeDifficulty.RawValue(),
            "season": RecipeSeason.RawValue(),
            "cost": RecipeCost.RawValue(),
            "diet": recipe?.diet ?? "",
            "personCount": recipe?.personCount ?? 1
        ]
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "PUT"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.httpBody = try? JSONSerialization.data(withJSONObject: body)
        
        let (data, _) = try await URLSession.shared.data(for: urlRequest)
        let decoder = JSONDecoder()
        let decodedRecipe = try decoder.decode(Recipe.self, from: data)
        
        return decodedRecipe
    }
    
    /*---------------- DeleteRequest ------------------*/
    func updateRecipe(id: Int) async throws -> Recipe {
        guard let url = URL(string: "\(endPoint)\(id)")
        else {
            fatalError("Missing URL")
        }
        
        var urlRequest = URLRequest(url: url)
        print(urlRequest)
        urlRequest.httpMethod = "DELETE"
        
        let (data, _) = try await URLSession.shared.data(for: urlRequest)
        let decoder = JSONDecoder()
        let decodedRecipe = try decoder.decode(Recipe.self, from: data)
        
        return decodedRecipe
    }
}
