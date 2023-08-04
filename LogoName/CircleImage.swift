//
//  CircleImage.swift
//  LogoName
//
//  Created by Quan Tong Nhat on 04/08/2023.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        ZStack {
            Image("gymstore")
                .overlay(
                    Circle()
                        .stroke(Color(.red), lineWidth:4)
                        .frame(width: 150,height: 150))
                
            
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
