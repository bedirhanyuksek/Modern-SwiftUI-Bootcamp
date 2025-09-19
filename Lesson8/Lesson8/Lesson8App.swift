//
//  Lesson8App.swift
//  Lesson8
//
//  Created by Bedirhan Yüksek on 19.09.2025.
//

import SwiftUI

@main
struct Lesson8App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
