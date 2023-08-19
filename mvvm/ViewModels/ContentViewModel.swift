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
    }
}

