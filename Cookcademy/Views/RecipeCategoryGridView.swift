//
//  RecipeCategoryGridView.swift
//  Cookcademy
//
//  Created by Curtis Turk on 10/07/2023.
//

import SwiftUI

struct RecipeCategoryGridView: View {
    private var recipeData = RecipeData()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(), GridItem()], content: {
                    ForEach(MainInformation.Category.allCases, id: \.self) { category in
                        ZStack{
                            Image(category.rawValue).resizable().aspectRatio(contentMode: .fit)
                            Text(category.rawValue).font(.title)
                        }
                    }
                }).navigationTitle("Categories")
            }
        }
    }
}

//struct CategoryView: View {
//    let category: MainInformation.Category
//    
//    var body: some View {
//        ZStack
//    }
//}

struct RecipeCategoryGridView_Previews: PreviewProvider {
  static var previews: some View {
    RecipeCategoryGridView()
  }
}
