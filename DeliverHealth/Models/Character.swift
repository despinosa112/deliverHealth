//
//  Character.swift
//  DeliverHealth
//
//  Created by Daniel Espinosa on 7/23/22.
//

import Foundation

struct Character: Decodable, Identifiable {
    var name: String?
    var height: String?
    var mass: String?
    var hair_color: String?
    var skin_color: String?
    var eye_color: String?
    var birth_year: String?
    var gender: String?
    var image: String?
    var id: Int?
}
