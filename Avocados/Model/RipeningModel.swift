//
//  RipeningModel.swift
//  Avocados
//
//  Created by Philip Al-Twal on 10/27/22.
//

import Foundation

//MARK: - RIPENING MODEL

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
