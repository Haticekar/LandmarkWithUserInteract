//
//  CircleImage.swift
//  LandmarksIki
//
//  Created by Hatice Kar on 6.11.2024.
//

import SwiftUI

struct CircleImage: View {
    var image : Image
    var body: some View {
        image.clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }.shadow(radius: 4)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
