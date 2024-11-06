//
//  LandmarkDetail.swift
//  LandmarksIki
//
//  Created by Hatice Kar on 6.11.2024.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark : Landmark
    var body: some View {
        VStack{
            ScrollView{
                MapView(coordinate: landmark.locationCoordinate).frame(height:400)
                CircleImage(image: landmark.image).offset(y:-150)
                    .padding(.bottom,-140)
                VStack(alignment: .leading){
                    Text(landmark.name)
                        .font(.title)
                    
                    HStack{
                        Text(landmark.park)
                            .font(.subheadline)
                        Spacer()
                        Text(landmark.state)
                            .font(.subheadline)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    Divider()
                    Text("About\(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                    
                }
                .padding()
                Spacer()
            }
        }
    }
}

#Preview {
    //LandmarkDetail(landmark: landmarks[0])
    LandmarkDetail(landmark: ModelData().landmarks[0])
}
