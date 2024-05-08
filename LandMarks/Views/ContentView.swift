//
//  ContentView.swift
//  LandMarks
//
//  Created by Eddy David Mendoza on 7/05/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    var body: some View {
        LandMarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
