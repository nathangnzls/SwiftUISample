    //
//  ContentView.swift
//  SwiftUISample
//
//  Created by Nathan on 2/19/20.
//  Copyright © 2020 Nathan. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var categories:[String:[Drink]]{
      Dictionary(grouping: drinkData, by: {$0.category.rawValue})
    }
    var body: some View {
        NavigationView{
            List(categories.keys.sorted(), id: \String.self){ key in
                DrinkRow(categoryName: "\(key) Drinks".uppercased(), drinks: self.categories[key] ?? [])
                    .padding(.top)
                    .padding(.bottom)
            }
        .navigationBarTitle(Text("Coffee List"))
        }
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
