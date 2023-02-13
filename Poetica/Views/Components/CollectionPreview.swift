//
//  CollectionPreview.swift
//  Poetica
//
//  Created by Evan Luo on 2/13/23.
//

import SwiftUI

struct CollectionPreview: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("Walden")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(10)
            Text("Collection Name")
                .font(.footnote)
            Text("Author")
                .font(.footnote)
                .foregroundColor(.gray)
        }
    }
}
