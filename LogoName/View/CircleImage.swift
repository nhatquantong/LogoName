//
//  CircleImage.swift
//  LogoName
//
//  Created by Quan Tong Nhat on 04/08/2023.
//

import SwiftUI

struct CircleImage: View {
    var imageName: Image
    
    var body: some View {
        imageName
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imageName: Image("gymstore"))
    }
}
