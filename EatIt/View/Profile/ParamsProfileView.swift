//
//  ParamsProfileView.swift
//  EatIt
//
//  Created by Jonathan Duong on 05/11/2022.
//

import SwiftUI

struct ParamsProfileView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @Binding var selectedDiet: myDiet
        
    var body: some View {
        NavigationView {
            ZStack {
                Color.bglightGreen
                    .ignoresSafeArea()
                    Form {
                        myTextField(title: "name", text: $name, header: "Ton nom")
                        myTextField(title: "email", text: $email, header: "Ton adresse email")
                        mySecureField(title: "password", text: $password)
                        myPicketDiet(header: "Diet")
                    }
                    .scrollContentBackground(.hidden)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button("Fermer") {
                                presentationMode.wrappedValue.dismiss()
                            }
                        }
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button("Enregistrer") {
                                presentationMode.wrappedValue.dismiss()
                            }
                        }
                    }
            }
        }
    }
}

struct ParamsProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ParamsProfileView(selectedDiet: .constant(.sansGluten))
    }
}
