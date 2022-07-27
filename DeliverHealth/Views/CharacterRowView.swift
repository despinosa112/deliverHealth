//
//  CharacterRowView.swift
//  DeliverHealth
//
//  Created by Daniel Espinosa on 7/25/22.
//

import SwiftUI

struct CharacterRowView: View {
    
    var character: Character

    
    var body: some View {
        HStack{
            if #available(iOS 15.0, *) {
                AsyncImage(
                    url: URL(string: character.image ?? ""), content: { image in
                    image.resizable()
                            .aspectRatio(contentMode: .fill)
                         .frame(maxWidth: 60, maxHeight: 60)
                },
                placeholder: {
                    ProgressView()
                })

            }
            Text(character.name ?? "Character Name")
                .padding()
            Spacer()
        }
        .frame(height: 60)
    }
}

struct CharacterRowView_Previews: PreviewProvider {
    static var previews: some View {
        let character = Character(name: "Daniel",image: "https://picsum.photos/320/240")
        CharacterRowView(character: character)
    }
}
