//
//  LandmarkList.swift
//  LandmarksIki
//
//  Created by Hatice Kar on 6.11.2024.
//

import SwiftUI

struct LandmarkList: View {
    
    //@State private var showFavoriteOnly = true
    @Environment(ModelData.self) var modelData
    @State private var showFavoriteOnly = false
    
    var filtredLandmarks : [Landmark]{
        modelData.landmarks.filter{
            landmark in (!showFavoriteOnly || landmark.isFavorite)
        }
        /*landmarks.filter {
            landmark in (!showFavoriteOnly || landmark.isFavorite)
        }*/
    }
    
    var body: some View {
        NavigationSplitView{
            //List(landmarks, id:\.id){ landmark in
            //List(filtredLandmarks){landmark in
            List{
                Toggle(isOn: $showFavoriteOnly){
                    Text("Favorites Only").foregroundColor(.brown).bold()
                }
                ForEach(filtredLandmarks){landmark in
                    
                    NavigationLink{
                        LandmarkDetail(landmark:landmark)
                    }label : {
                        LandmarkRow(landmark:landmark)
                    }
                }
                
            }.navigationTitle("Landmarks").foregroundColor(.black).font(.title3).bold()
        }detail: {
            Text("Select a Landmark").font(.largeTitle)
        }
    }
}

#Preview {
    LandmarkList()
}

/*
 @State: Sadece tanımlandığı “View” nesnesi içinde kullanılan ön ektir. Değeri değiştiğinde, değerin bağlı olduğu “View” nesnelerini günceller.
 **/
