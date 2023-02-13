//
//  PoemSuggestions.swift
//  Poetica
//
//  Created by Evan Luo on 2/12/23.
//

import SwiftUI

struct PoemPreview: View {
    var body: some View {
        HStack {
            Image("Walden")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .cornerRadius(5)
                .clipped()
            VStack(alignment: .leading) {
                Text("Walden")
                    .font(.headline)
                    .bold()
                Text("By Henry David Thoreau")
                    .font(.headline)
            }
        }
    }
}
