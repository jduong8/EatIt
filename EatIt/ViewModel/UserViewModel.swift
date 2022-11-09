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
    
    let endPoint = "https://server-eat-it-app.herokuapp.com/users/"
}
