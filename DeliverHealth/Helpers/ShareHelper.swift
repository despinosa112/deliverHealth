//
//  ShareHelper.swift
//  DeliverHealth
//
//  Created by Daniel Espinosa on 7/26/22.
//

import Foundation
import SwiftUI

class ShareHelper: NSObject {
    
    static func shareCharacter(character: Character){
        guard let urlShare = URL(string: character.image ?? "") else { return }
        let descriptionItem = character.name
        let activityVC = UIActivityViewController(activityItems: [descriptionItem ?? "Star Wars Character", urlShare], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
    }
}

