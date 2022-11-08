//
//  UserViewModel.swift
//  EatIt
//
//  Created by Jonathan Duong on 07/11/2022.
//

import SwiftUI

class UserViewModel: ObservableObject {
    @Published var user: User?
    @Published var users: Users?
    
    let endPoint = "http://localhost:8000/users/"
}
