//
//  CharacterDetail.swift
//  DeliverHealth
//
//  Created by Daniel Espinosa on 7/25/22.
//

import SwiftUI

struct CharacterDetail: View {
    var character: Character
    
    var body: some View {
        ScrollView{
        VStack{
            if #available(iOS 15.0, *) {
                AsyncImage(
                    url: URL(string: character.image ?? ""), content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: UIScreen.main.bounds.width, height: 400)
                    },
                    placeholder: {
                        ProgressView()
                    })
                InfoRowView(key: "Birth Year:", value: character.birth_year)
                InfoRowView(key: "Gender:", value: character.gender)
                InfoRowView(key: "Height:", value: character.height)
                InfoRowView(key: "Mass:", value: character.mass)
                InfoRowView(key: "Eye Color:", value: character.eye_color)
                InfoRowView(key: "Hair Color:", value: character.hair_color)
                InfoRowView(key: "Skin Color:", value: character.skin_color)

                Spacer()
            } else {
                // Fallback on earlier versions
            }
        }
        }
    }
}

struct CharacterDetail_Previews: PreviewProvider {
    static var previews: some View {
        let character = Character(name: "Luke Skywalker", height: "172", mass: "77", hair_color: "blond", skin_color: "fair", eye_color: "blue", birth_year: "19BBY", gender: "male", image: "https://picsum.photos/320/240", id: 1)

        CharacterDetail(character: character)
    }
}
