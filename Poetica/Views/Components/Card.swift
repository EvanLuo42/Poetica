//
// Created by Evan Luo on 2/12/23.
//

import SwiftUI

struct Card: View {
    var body: some View {
        VStack {
            Image("Walden")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .clipped()
            HStack {
                VStack(alignment: .leading) {
                    Text("Category")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text("Everyone should read Walden")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text("Written by Evan Luo".uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                    
                }
                .layoutPriority(100)
                Spacer()
            }
            .padding()
        }
    }
}
