//
//  UserViewModel+.swift
//  EatIt
//
//  Created by Jonathan Duong on 07/11/2022.
//

import SwiftUI

extension UserViewModel {
    /*---------------- GetRequest for RECIPE ------------------*/
    func getRecipe() async throws -> Users {
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
        let decodedUsers = try decoder.decode(Users.self, from: data)
        
        return decodedUsers
    }
    
    /*---------------- PostRequest ------------------*/
    func postRecipe(_: User) async throws -> User {
        guard let url = URL(string: "\(endPoint)index")
        else {
            fatalError("Missing URL")
        }
        
        let body: [String: Any] = [
            "name": user?.name ?? "_",
            "diet": user?.diet ?? "",
            "email": user?.email ?? "",
            "password": user?.password ?? "",
            "picture": user?.picture ?? ""
        ]
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.httpBody = try? JSONSerialization.data(withJSONObject: body)
        let (data, _) = try await URLSession.shared.data(for: urlRequest)
        
        let decoder = JSONDecoder()
        let decodedUser = try decoder.decode(User.self, from: data)
        
        return decodedUser
    }
    
    /*---------------- PutRequest ------------------*/
    func updateRecipe(id: Int, _: User) async throws -> User {
        guard let url = URL(string: "\(endPoint)\(id)")
        else {
            fatalError("Missing URL")
        }
        
        let body: [String : Any] = [
            "name": user?.name ?? "_",
            "diet": user?.diet ?? "",
            "email": user?.email ?? "",
            "password": user?.password ?? "",
            "picture": user?.picture ?? ""
        ]
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "PUT"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.httpBody = try? JSONSerialization.data(withJSONObject: body)
        
        let (data, _) = try await URLSession.shared.data(for: urlRequest)
        let decoder = JSONDecoder()
        let decodedUser = try decoder.decode(User.self, from: data)
        
        return decodedUser
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
