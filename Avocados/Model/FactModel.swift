//
//  FactModel.swift
//  Avocados
//
//  Created by Philip Al-Twal on 10/26/22.
//

import Foundation

//MARK: - FACT MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
