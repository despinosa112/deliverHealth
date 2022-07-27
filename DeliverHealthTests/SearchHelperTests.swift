//
//  SearchHelperTests.swift
//  DeliverHealthTests
//
//  Created by Daniel Espinosa on 7/26/22.
//

import XCTest
@testable import DeliverHealth


class SearchHelperTests: XCTestCase {
    
    var characters: [Character] = [Character]()

    override func setUp() {
        super.setUp()
        let dan = Character(name: "Dan")
        let david = Character(name: "david")
        let daniel = Character(name: "daniel")
        let nick = Character(name: "Nick")
        
        self.characters.append(dan)
        self.characters.append(david)
        self.characters.append(daniel)
        self.characters.append(nick)
    }
    
    func test_filterCharacters_emptyStringReturnsFullData(){
        let filteredCharacters = SearchHelper.filterCharacters(query: "", characters: characters)
        XCTAssertEqual(filteredCharacters.count, 4)
    }
    
    func test_filterCharacters_capitalizationDoesntMatter(){
        let filteredCharacters = SearchHelper.filterCharacters(query: "DAVID", characters: characters)
        let filteredCharacter = filteredCharacters.first
        XCTAssertEqual(filteredCharacters.count, 1)
        XCTAssertEqual(filteredCharacter?.name, "david")
    }

    func test_filterCharacters_queryDA(){
        let filteredCharacters = SearchHelper.filterCharacters(query: "DA", characters: characters)
        XCTAssertEqual(filteredCharacters.count, 3)
        XCTAssertEqual(filteredCharacters[0].name, "Dan")
        XCTAssertEqual(filteredCharacters[1].name, "david")
        XCTAssertEqual(filteredCharacters[2].name, "daniel")
    }



}
