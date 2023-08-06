//
//  SupplementStoreCard.swift
//  LogoName
//
//  Created by Quan Tong Nhat on 04/08/2023.
//

import SwiftUI
import MapKit

struct SupplementStoreCard: View {
    var supplementstore : SupplementStore
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                MapView(coordinate: CLLocationCoordinate2D(latitude: 12.000, longitude: -120.002))
                    .padding(.bottom,10)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 250)
                CircleImage(imageName: supplementstore.imageName)
                        
                Text("Gymstore")
                    .padding(.top,80)
                
                InfoView(text: "Testing", imageName: "person.crop.circle")
                InfoView(text: "Testing", imageName: "lanyardcard")

            }
                
            }
            
        }
       
        
    }
}

struct SupplementStoreCard_Previews: PreviewProvider {
    static var previews: some View {
        SupplementStoreCard(supplementstore: supplementstores[0])
    }
}
