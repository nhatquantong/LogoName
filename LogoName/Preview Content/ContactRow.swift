//
//  ContactRow.swift
//  LogoName
//
//  Created by Quan Tong Nhat on 04/08/2023.
//

import SwiftUI

struct ContactRow: View {
    var body: some View {
        HStack{
            Image("gymstore")
            VStack{
                Text("Testing")
                VStack{
                    Text("Testing")
                        .font(.system(size: 12))
                }
            }
            
               
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow()
    }
}
