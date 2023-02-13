//
//  PoeticaApp.swift
//  Poetica
//
//  Created by Evan Luo on 2/12/23.
//
//

import SwiftUI

@main
struct PoeticaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
