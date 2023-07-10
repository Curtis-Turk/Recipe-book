//
//  ContentView.swift
//  Cookcademy
//
//  Created by Curtis Turk on 06/07/2023.
//

import SwiftUI

struct RecipeListView: View {
    
    @StateObject var recipeData = RecipeData()
    
    private let listBackgroundColor = AppColor.background
    private let listTextColor = AppColor.foreground
    
    var body: some View {
        NavigationView(){
            List {
                ForEach(recipes) { recipe in
                    NavigationLink(recipe.mainInformation.name){
                        RecipeDetailView(recipe: recipe)
                    }
                }.listRowBackground(listBackgroundColor).foregroundColor(listTextColor)
            }.navigationTitle(navigationTitle)
        }
    }
}

extension RecipeListView {
    var recipes: [Recipe] {
        recipeData.recipes
    }
    var navigationTitle: String {
        "All Recipes"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
