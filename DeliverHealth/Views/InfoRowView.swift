//
//  InfoRowView.swift
//  DeliverHealth
//
//  Created by Daniel Espinosa on 7/25/22.
//

import SwiftUI

import SwiftUI

struct InfoRowView: View {
    var key: String?
    var value: String?
    var body: some View {
        HStack {
            Text(key ?? "KEY")
                .padding(.leading, 4)
                .font(Font.headline.weight(.bold))
            Text(value ?? "VALUE")
            Spacer()

        }
        .frame(height: 40)
    }
}

struct InfoRowView_Previews: PreviewProvider {
    static var previews: some View {
        InfoRowView(key: "Info Key", value: "Info Val")
    }
}
