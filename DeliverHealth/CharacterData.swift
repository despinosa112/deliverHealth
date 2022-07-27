//
//  ModelData.swift
//  DeliverHealth
//
//  Created by Daniel Espinosa on 7/23/22.
//

import Foundation
import SwiftUI

class CharacterData: ObservableObject {
    
    @Published var characters: [Character]? = nil
    @Published var filteredCharacters: [Character]? = nil
    
    func loadCharacters(){
        guard let url = URL(string: "https://duet-public-content.s3.us-east-2.amazonaws.com/project.json") else { return }
        APIHelper.fetchUrl(url: url, model: CharacterResults.self) { characterResults in
            DispatchQueue.main.async {
                self.characters = characterResults?.results
                self.filteredCharacters = characterResults?.results
            }
        }
    }
}
