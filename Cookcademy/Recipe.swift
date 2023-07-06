//
//  Recipe.swift
//  Cookcademy
//
//  Created by Curtis Turk on 06/07/2023.
//

import Foundation

struct Recipe {
  var name: String
  var description: String
  var author: String
  var category: String
    //Breakfast, Lunch, Dinner, Dessert
  var ingredients: [String]
  var directions: [String]
}
