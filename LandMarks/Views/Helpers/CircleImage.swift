//
//  CircleImage.swift
//  LandMarks
//
//  Created by Eddy David Mendoza on 9/05/24.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(Color.white,lineWidth: 4.0)
            }
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
