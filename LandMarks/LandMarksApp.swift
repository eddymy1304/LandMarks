//
//  LandMarksApp.swift
//  LandMarks
//
//  Created by Eddy David Mendoza on 7/05/24.
//

import SwiftUI
import SwiftData

@main
struct LandMarksApp: App {
    
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
