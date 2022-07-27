//
//  SearchHelper.swift
//  DeliverHealth
//
//  Created by Daniel Espinosa on 7/26/22.
//

import Foundation

class SearchHelper: NSObject {
    
    static func filterCharacters(query: String, characters: [Character]) -> [Character] {
        if (query.count < 1) {
            return characters
        }
        
        let filteredCharacters = characters.filter { character in
            guard let characterName = character.name?.uppercased() else { return false}
            return characterName.contains(query.uppercased())
        }
        
        return filteredCharacters
    }
}
