//
//  RecipeData.swift
//  Cookcademy
//
//  Created by Curtis Turk on 06/07/2023.
//

import Foundation

class RecipeData: ObservableObject {
  @Published var recipes = Recipe.testRecipes
}
