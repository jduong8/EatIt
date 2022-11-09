//
//  StepViewModel+.swift
//  EatIt
//
//  Created by Jonathan Duong on 09/11/2022.
//

import SwiftUI

extension StepViewModel {
    func getStep() async throws -> Steps {
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
        let decodedSteps = try decoder.decode(Steps.self, from: data)
        
        return decodedSteps
    }
    
    /*---------------- PostRequest ------------------*/
    func postStep(_: Step) async throws -> Step {
        guard let url = URL(string: "\(endPoint)index")
        else {
            fatalError("Missing URL")
        }
        
        let body: [String: Any] = [
            "recipeId": recipe.id,
            "number": step?.number ?? "Step n°",
            "description": step?.description ?? ""
        ]
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.httpBody = try? JSONSerialization.data(withJSONObject: body)
        let (data, _) = try await URLSession.shared.data(for: urlRequest)
        
        let decoder = JSONDecoder()
        let decodedStep = try decoder.decode(Step.self, from: data)
        
        return decodedStep
    }
    
    /*---------------- PutRequest ------------------*/
    func updateStep(id: Int, _: Step) async throws -> Step {
        guard let url = URL(string: "\(endPoint)\(id)")
        else {
            fatalError("Missing URL")
        }
        
        let body: [String : Any] = [
            "recipeId": recipe.id,
            "number": step?.number ?? "Step n°",
            "description": step?.description ?? ""
        ]
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "PUT"
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.httpBody = try? JSONSerialization.data(withJSONObject: body)
        
        let (data, _) = try await URLSession.shared.data(for: urlRequest)
        let decoder = JSONDecoder()
        let decodedStep = try decoder.decode(Step.self, from: data)
        
        return decodedStep
    }
    
    /*---------------- DeleteRequest ------------------*/
    func updateStep(id: Int) async throws -> Step {
        guard let url = URL(string: "\(endPoint)\(id)")
        else {
            fatalError("Missing URL")
        }
        
        var urlRequest = URLRequest(url: url)
        print(urlRequest)
        urlRequest.httpMethod = "DELETE"
        
        let (data, _) = try await URLSession.shared.data(for: urlRequest)
        let decoder = JSONDecoder()
        let decodedStep = try decoder.decode(Step.self, from: data)
        
        return decodedStep
    }
}
