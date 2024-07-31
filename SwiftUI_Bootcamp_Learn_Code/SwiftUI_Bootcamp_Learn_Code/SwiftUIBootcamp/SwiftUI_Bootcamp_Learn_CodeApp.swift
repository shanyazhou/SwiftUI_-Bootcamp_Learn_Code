//
//  SwiftUI_Bootcamp_Learn_CodeApp.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/5/30.
//

import SwiftUI
import SwiftData

@main
struct SwiftUI_Bootcamp_Learn_CodeApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            HomeListView()
//            SwiftCallSwiftUI(vc: ViewControllerA(), title: "123")
        }
        .modelContainer(sharedModelContainer)
    }
}
