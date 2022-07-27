//
//  DeliverHealthApp.swift
//  DeliverHealth
//
//  Created by Daniel Espinosa on 7/23/22.
//

import SwiftUI

@main
struct DeliverHealthApp: App {
    
    @StateObject private var characterData = CharacterData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(characterData)
        }
    }
}
