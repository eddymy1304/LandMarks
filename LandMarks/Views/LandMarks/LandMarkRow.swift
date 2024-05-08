//
//  LandMarkRow.swift
//  LandMarks
//
//  Created by Eddy David Mendoza on 9/05/24.
//

import SwiftUI

struct LandMarkRow: View {
    
    var landMark: LandMark
    
    var body: some View {
        HStack {
            landMark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landMark.name)
            
            Spacer()
            
            if(landMark.isFavorite) {
                Image(systemName: "star.fill")
                    .foregroundStyle(Color.yellow)
            }
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return Group {
        LandMarkRow(landMark: landmarks[0])
        LandMarkRow(landMark: landmarks[1])
        LandMarkRow(landMark: landmarks[2])
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return LandMarkRow(landMark: landmarks[0])
}

#Preview {
    let landmarks = ModelData().landmarks
    return LandMarkRow(landMark: landmarks[1])
}
