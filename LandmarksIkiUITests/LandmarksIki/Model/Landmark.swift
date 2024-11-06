//
//  Landmark.swift
//  LandmarksIki
//
//  Created by Hatice Kar on 6.11.2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark : Codable, Hashable, Identifiable{
    var id : Int
    var name : String
    var park : String
    var state : String
    var description : String
    var isFavorite : Bool

       
    private var imageName : String
    var image : Image {
        Image(imageName)
    }
       
    private var coordinates : Coordinates
    var locationCoordinate : CLLocationCoordinate2D{
        CLLocationCoordinate2D(
         latitude: coordinates.latitude,
         longitude: coordinates.longitude
        )
       }
    struct Coordinates : Hashable,Codable{
        var latitude : Double
        var longitude : Double
    }
}
