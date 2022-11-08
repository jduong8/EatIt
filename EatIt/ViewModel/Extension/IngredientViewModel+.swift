//
//  IngredientViewModel+.swift
//  EatIt
//
//  Created by Jonathan Duong on 07/11/2022.
//

import SwiftUI

extension IngredientViewModel {
    /*---------------- GetRequest for RECIPE ------------------*/
    func getRecipe() async throws -> Ingredients {
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
        let decodedIngredients = try decoder.decode(Ingredients.self, from: data)
        
        return decodedIngredients
    }
    
    /*---------------- PostRequest ------------------*/
    func postRecipe(_: Ingredient) async throws -> Ingredient {
        guard let url = URL(string: "\(endPoint)index")
        else {
            fatalError("Missing URL")
        }
        
        let body: [String: Any] = [
            "name": ingredient?.name ?? "_",
            "unit": ingredient?.unit ?? "",
            "image": ingredient?.image ?? ""
        ]
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.httpBody = try? JSONSerialization.data(withJSONObject: body)
        let (data, _) = try await URLSession.shared.data(for: urlRequest)
        
        let decoder = JSONDecoder()
        let decodedIngredient = try decoder.decode(Ingredient.self, from: data)
        
        return decodedIngredient
    }
    
    /*---------------- PutRequest ------------------*/
    func updateRecipe(id: Int, _: Ingredient) async throws -> Ingredient {
        guard let url = URL(string: "\(endPoint)\(id)")
        else {
            fatalError("Missing URL")
        }
        
        let body: [String : Any] = [
            "name": ingredient?.name ?? "_",
            "unit": ingredient?.unit ?? "",
            "image": ingredient?.image ?? ""
        ]
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "PUT"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.httpBody = try? JSONSerialization.data(withJSONObject: body)
        
        let (data, _) = try await URLSession.shared.data(for: urlRequest)
        
        let decoder = JSONDecoder()
        let decodedIngredient = try decoder.decode(Ingredient.self, from: data)
        
        return decodedIngredient
    }
    
    /*---------------- DeleteRequest ------------------*/
    func updateRecipe(id: Int) async throws -> User {
        guard let url = URL(string: "\(endPoint)\(id)")
        else {
            fatalError("Missing URL")
        }
        
        var urlRequest = URLRequest(url: url)
        print(urlRequest)
        urlRequest.httpMethod = "DELETE"
        
        let (data, _) = try await URLSession.shared.data(for: urlRequest)
        let decoder = JSONDecoder()
        let decodedUser = try decoder.decode(User.self, from: data)
        
        return decodedUser
    }
}
