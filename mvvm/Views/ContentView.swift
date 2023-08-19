//
//  ContentView.swift
//  mvvm
//
//  Created by Süleyman Çambel on 19.08.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Toggle("Switch", isOn: $viewModel.isOn)
                .padding()
            
            HStack {
                Button("Increment") {
                    viewModel.increment()
                }
                Text("\(viewModel.counter)")
                    .bold()
                    .foregroundColor(.blue.opacity(0.7))
                    .padding()
            }
            List(viewModel.itemList) { item in
                HStack {
                    Text(item.name)
                    Spacer()
                    Text(item.description)
                }
            }
            .listStyle(.plain)
            .background(.thinMaterial)
            
            Button("Add") {
                viewModel.addItem()
            }
            .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
