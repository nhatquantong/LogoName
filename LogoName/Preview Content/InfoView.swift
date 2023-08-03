//
//  InfoView.swift
//  LogoName
//
//  Created by Quan Tong Nhat on 28/07/2023.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 25)
            .fill(.black)
            .frame(height: 50)
            .overlay(
                HStack{
                    Image(systemName:imageName)
                        .foregroundColor(.white)
                    Text(text)
                        .foregroundColor(.white)
                })
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            InfoView(text:"Student Info", imageName: "person.crop.circle")
            InfoView(text:"s3819347", imageName: "lanyardcard")
            
        }
    }
}
