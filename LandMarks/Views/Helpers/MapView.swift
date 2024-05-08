//
//  MapView.swift
//  LandMarks
//
//  Created by Eddy David Mendoza on 9/05/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
//        Map(initialPosition: .region(region))
        Map(position: .constant(.region(region)))
    }
    
    private var region : MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 0.0,longitude: 0.0))
}
