//
//  TheMovieDBApp.swift
//  TheMovieDB
//
//  Created by Victor Dângelo Teixeira Ciccarini on 19/01/21.
//

import SwiftUI

@main
struct TheMovieDBApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
