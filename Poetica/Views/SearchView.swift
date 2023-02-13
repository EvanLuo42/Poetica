//
// Created by Evan Luo on 2/12/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "TimesNewRomanPS-BoldMT", size: 40)!]
    }
    
    var body: some View {
        NavigationStack {
            VStack {
            }
            .navigationTitle("Search")
            .searchable(text: $searchText)
        }
    }
}
