//
//  MyDoApp.swift
//  MyDo
//
//  Created by 정현 on 12/28/23.
//

import SwiftUI

@main
struct MyDoApp: App {
//    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
