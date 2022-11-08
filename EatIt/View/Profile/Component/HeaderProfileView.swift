//
//  HeaderProfileView.swift
//  EatIt
//
//  Created by Jonathan Duong on 04/11/2022.
//

import SwiftUI

struct HeaderProfileView: View {
    @State private var personCount: Int = 1
    @Binding var myDiet: myDiet
    let user: User
    var body: some View {
        VStack {
            Image(user.picture ?? "")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 200)
            Text(user.name)
                .font(.title)
                .bold()
            HStack {
                Image(systemName: "person.2")
                HStack {
                    Picker("Nombre de personnes", selection: $personCount) {
                        ForEach(1..<10) { index in
                            Text("\(index)")
                        }
                    }
                    Text(personCount < 1 ? "personne" : "personnes")
                }.pickerStyle(.menu)
                    .font(.caption)
                    .foregroundColor(.gray)
                Spacer()
                Text(myDiet.rawValue)
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.trailing, 20)
            }
            .padding()
        }
    }
}

struct HeaderProfileView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderProfileView(myDiet: .constant(.sansGluten), user: User.userExample)
    }
}
