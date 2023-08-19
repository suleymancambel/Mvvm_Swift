//
//  ItemModel.swift
//  mvvm
//
//  Created by Süleyman Çambel on 19.08.2023.
//

import Foundation


struct Item: Identifiable, Codable {
    
    var id = UUID()
    var name: String
    var description: String
    
    
    static var exampleItem = Item(name: "Apple", description: "For Developers")
}
