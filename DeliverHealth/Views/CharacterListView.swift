//
//  CharacterListView.swift
//  DeliverHealth
//
//  Created by Daniel Espinosa on 7/25/22.
//

import SwiftUI

struct CharacterListView: View {
    
    @EnvironmentObject var characterData: CharacterData
    @State private var searchText = ""
    
    var body: some View {
        if #available(iOS 15.0, *) {
            List(characterData.filteredCharacters ?? [Character](), id: \.name){ character in
                NavigationLink {
                    CharacterDetail(character: character)
                        .navigationTitle(character.name ?? "Character Name")
                        .toolbar {
                            Button() {
                                ShareHelper.shareCharacter(character: character)
                            } label: {
                                Image(systemName: "square.and.arrow.up")
                            }
                        }
                } label: {
                    CharacterRowView(character: character)
                }
            }
            .listStyle(.inset)
            .onAppear {
                characterData.loadCharacters()
            }
            .searchable(text: $searchText, prompt: "Search a character")
            .onChange(of: searchText) { newValue in
                characterData.filteredCharacters = SearchHelper.filterCharacters(query: newValue, characters: characterData.characters ?? [Character]())
            }
        } else {
            // Fallback on earlier versions
        }
    }
}

struct CharacterListView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterListView()
    }
}
