//
//  Logo.swift
//  LogoName
//
//  Created by Quan Tong Nhat on 28/07/2023.
//

import SwiftUI


struct Logo: View {
    var body: some View {
        Image("supplement")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100)
           

    }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
    }
}
