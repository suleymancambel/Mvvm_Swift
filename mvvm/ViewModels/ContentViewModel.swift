//
//  ContentViewModel.swift
//  mvvm
//
//  Created by Süleyman Çambel on 19.08.2023.
//

import Foundation
import SwiftUI

extension ContentView {
    
    @MainActor class ViewModel: ObservableObject {
        @Published var isOn: Bool = true
        @Published var counter = 0
        @Published var itemList = [Item]()
        
        func increment() {
            counter += 1
        }
        
        func addItem() {
            let random = ["Msi", "Asus", "Dell", "Acer", "Apple"]
            let item = random.randomElement()!
            let newItem = Item(name: item, description: "Item: \(itemList.count + 1)")
            
            withAnimation {
                
                itemList.insert(newItem, at: 0)
            }
        }
    }
}

