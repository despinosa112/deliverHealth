//
//  ContentView.swift
//  DeliverHealth
//
//  Created by Daniel Espinosa on 7/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            CharacterListView()
                .navigationTitle("StarWars Characters")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
