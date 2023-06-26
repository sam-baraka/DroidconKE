//
//  DroidconKEApp.swift
//  DroidconKE
//
//  Created by Samuel Baraka on 16/06/2023.
//

import SwiftUI

@main
struct DroidconKEApp: App {
    @StateObject private var bottomNavigationViewModel = BottomNavigationViewModel()
    var body: some Scene {
        WindowGroup {
            AppView().environmentObject(bottomNavigationViewModel)
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

