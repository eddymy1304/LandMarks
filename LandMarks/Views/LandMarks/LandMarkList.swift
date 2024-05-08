//
//  LandMarkList.swift
//  LandMarks
//
//  Created by Eddy David Mendoza on 9/05/24.
//

import SwiftUI

struct LandMarkList: View {
    
    @Environment(ModelData.self) var modelData
    
    @State private var showFavoritesOnly = true
    
    var filterdLandMarks: [LandMark] {
        modelData.landmarks.filter{ landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        /*       List {
         LandMarkRow(landMark: landmarks[0])
         LandMarkRow(landMark: landmarks[1])
         LandMarkRow(landMark: landmarks[2])
         LandMarkRow(landMark: landmarks[3])
         LandMarkRow(landMark: landmarks[4])
         }*/
        
        /*        List(landmarks, id: \.id) { landMark in
         LandMarkRow(landMark: landMark)
         }*/
        
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filterdLandMarks) { landmark in
                    NavigationLink {
                        LandMarkDetail(landmark: landmark)
                    } label: {
                        LandMarkRow(landMark: landmark)
                    }
                }
            }
            .animation(.default, value: filterdLandMarks)
            .navigationTitle("Landmarks")

        } detail: {
            Text("Select a landmark")
        }
        
    }
}

#Preview {
    LandMarkList()
}
