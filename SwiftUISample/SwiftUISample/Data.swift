//
//  Data.swift
//  SwiftUISample
//
//  Created by Nathan on 2/19/20.
//  Copyright © 2020 Nathan. All rights reserved.
//
import Foundation
let drinkData:[Drink] = load("drinks.json")
func load<T:Decodable>(_ filename: String, as type: T.Type = T.self) -> T{
    let data:Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else{
        fatalError("Couldn't find \(filename)")
    }
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Couldn't find \(filename) from error: \(error)")
    }
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Couldn't find \(filename) as \(T.self) \n\(error)")
    }
}
