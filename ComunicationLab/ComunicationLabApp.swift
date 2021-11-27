//
//  ComunicationLabApp.swift
//  ComunicationLab
//
//  Created by Erik Flores on 27/11/21.
//

import SwiftUI

@main
struct ComunicationLabApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
