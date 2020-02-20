//
//  Drink.swift
//  SwiftUISample
//
//  Created by Nathan on 2/19/20.
//  Copyright © 2020 Nathan. All rights reserved.
//

import SwiftUI

struct Drink: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var imageName: String
    var category: Category
    var description: String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
        case hots = "hots"
    }
}
