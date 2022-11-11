//
//  RecipeModel.swift
//  Avocados
//
//  Created by Philip Al-Twal on 10/26/22.
//

import Foundation


//MARK: - RECIPE MODEL

struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
}
