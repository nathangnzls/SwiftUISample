//
//  DrinkRow.swift
//  SwiftUISample
//
//  Created by Nathan on 2/19/20.
//  Copyright © 2020 Nathan. All rights reserved.
//

import SwiftUI
import UIKit
struct DrinkRow: View {
    var categoryName: String
    var drinks: [Drink]
    var body: some View {
        
        VStack (alignment: .leading){
            Text(self.categoryName)
                .font(.title)
                .padding(.leading, 10)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top){
                    ForEach(self.drinks, id: \.name){
                        drink in
                        NavigationLink(destination: DrinkDetail(drink: drink)){
                            DrinkItem(drink: drink)          .frame(width: 300)         .padding(.trailing, 30)
                        }
                    }
                }
            }
        }
        
    }
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "Hot Drinks", drinks: drinkData)
    }
}
