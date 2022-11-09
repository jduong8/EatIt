//
//  ProfileView.swift
//  EatIt
//
//  Created by Jonathan Duong on 05/11/2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var isPresented: Bool = false
    @State private var isSheet: Bool = false
    @State var myDiet: myDiet = .sansGluten
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HeaderProfileView(myDiet: $myDiet, user: User.userExample)
                    FooterProfileView(isPresented: $isPresented)
                }
                .toolbar {
                    Button {
                        isSheet.toggle()
                    } label: {
                        Image(systemName: "gearshape")
                    }
                    .fullScreenCover(isPresented: $isSheet) {
                        ParamsProfileView.init(selectedDiet: $myDiet)
                    }
                }
            }
            .background(Color.bgLightGreen)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
