//
//  HeaderModel.swift
//  Avocados
//
//  Created by Philip Al-Twal on 10/26/22.
//

import Foundation
import SwiftUI

//MARK: - HEADER MODEL

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
