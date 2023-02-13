//
//  ContentView.swift
//  Poetica
//
//  Created by Evan Luo on 2/12/23.
//
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @State private var selection = TabType.home

    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .tag(TabType.home)
            LibraryView()
                    .tabItem {
                        Label("Library", systemImage: "book")
                    }
                    .tag(TabType.library)
            SearchView()
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                    .tag(TabType.search)
        }
    }
}

enum TabType: String, CaseIterable {
    case home = "Home"
    case library = "Library"
    case search = "Search"

    var systemImage: String {
        switch self {
        case .home:
            return "house"
        case .library:
            return "book"
        case .search:
            return "magnifyingglass"
        }
    }
}
