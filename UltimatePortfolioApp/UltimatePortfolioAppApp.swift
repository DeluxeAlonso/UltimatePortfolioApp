//
//  UltimatePortfolioAppApp.swift
//  UltimatePortfolioApp
//
//  Created by Alonso on 1/01/24.
//

import SwiftUI

@main
struct UltimatePortfolioAppApp: App {
    @StateObject var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
