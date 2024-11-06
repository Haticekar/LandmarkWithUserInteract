//
//  LandmarksIkiApp.swift
//  LandmarksIki
//
//  Created by Hatice Kar on 6.11.2024.
//

import SwiftUI

@main
struct LandmarksIkiApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
