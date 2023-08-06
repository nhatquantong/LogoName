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
            ScrollView{
                VStack{
                    Spacer()
                    MapView(coordinate: supplementstore.locationCoordinate)
                    .padding(.bottom,10)
                   
                    .frame(height: 250)
                CircleImage(imageName: supplementstore.imageName)
                        
                    Text(supplementstore.name)
                        .font(.custom("Quicksand-SemiBold", size: 25))
                        .textCase(.uppercase)
                    
                    Text(supplementstore.address)
                        
                        .font(.custom("Quicksand-SemiBold", size: 10))
                        .foregroundColor(.gray)
                        
                    Text(supplementstore.description)
                        .frame(width: 350)
                        .font(.custom("Quicksand-Medium", size: 15))
                        .padding(.top,20)
                
            

            }
                
            }
            
        
       
        
    }
}

struct SupplementStoreCard_Previews: PreviewProvider {
    static var previews: some View {
        SupplementStoreCard(supplementstore: supplementstores[0])
    }
}
