//
//  AddRecipesView.swift
//  EatIt
//
//  Created by Jonathan Duong on 09/11/2022.
//

//import SwiftUI
//
//struct AddRecipesView: View {
//
//    @StateObject var recipeVM = RecipeViewModel()
//    @State var recipe: Recipe
//
//    var body: some View {
//        Text("Hello, World!")
//    }
//}
//
//struct AddRecipesView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddRecipesView(recipe: Recipe.recipeExample[0])
//    }
//}
import SwiftUI
import PhotosUI

struct AddRecipesView: View {
    
    @StateObject var recipeVM = RecipeViewModel()
    @State private var selectedItem: PhotosPickerItem?
    @State private var textFieldName = ""
    @State private var categoryPicker: RecipeCategory = .dessert
    @State private var costPicker: RecipeCost = .abordable
    @State private var levelPicker: RecipeDifficulty = .commeUnChef
    @State private var dietPicker: Diet = .tout
    @State private var seasonPicker: RecipeSeason = .ete
    @State private var textFieldPrepTime = ""
    @State private var textFieldCookingTime = ""
    @State private var textFieldRestTime = ""
    @State private var textFieldIngredient = ""
    @State private var ingredients = [Ingredient]()
    @State private var textFieldDescription = ""
    @State private var textFieldStep = ""
    @State private var steps = [Step]()
    
    //    Permet de baisser la vue
    @Environment(\.presentationMode) var presentationMode
    
    //    afficher/retirer clavier
    @FocusState private var isKeyboardFocused: Bool
    
    var isButtonDisabled: Bool {
        textFieldName.count > 3
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                Form {
                    Section {
                        if let selectedImage = recipeVM.selectedImage {
                            selectedImage
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                        }
                        PhotosPicker(selection: $selectedItem) {
                            Label("Choisi une image", systemImage: "photo.artframe")
                        }
                        .onChange(of: selectedItem) { newValue in
                            Task {
                                if let imageData = try? await newValue?.loadTransferable(type: Data.self), let image = UIImage(data: imageData) {
                                    recipeVM.selectedImage = Image(uiImage: image)
                                }
                            }
                        }
                        TextField("Ajoute un titre à ta recette", text: $textFieldName)
                            .focused($isKeyboardFocused)
                    }
                    Section {
                        CategoryPickerView(recipeCategory: $categoryPicker)
                        CostPickerView(costPicker: $costPicker)
                        DifficultyPickerView(recipeDifficulty: $levelPicker)
                        DietPickerView(dietPicker: $dietPicker)
                        SeasonPickerView(seasonPicker: $seasonPicker)
                    }
                    
                    Section {
                        TextField("Temps de préparation", text: $textFieldPrepTime)
                        TextField("Temps de cuisson", text: $textFieldCookingTime)
                        TextField("Temps de repos", text: $textFieldRestTime)
                        TextField("Ajouter un ingrédient", text: $textFieldIngredient)
                    }
                }
                .scrollContentBackground(.hidden)
                .background(Color.bgLightGreen)
                .navigationTitle("Nouvelle recette")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Text("Submit")
                                .foregroundColor(.white)
                                .padding(5)
                        })
                        .disabled(!isButtonDisabled)
                        .padding()
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius: 50))
                        .tint(Color("darkGreen"))
                    }
                    
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button(action: {
                            isKeyboardFocused.toggle()
                        }, label: {
                            Text("Done")
                                .foregroundColor(Color("darkGreen"))
                        })
                    }
                }
            }
        }
    }
}

struct RecipeFormView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipesView()
    }
}
