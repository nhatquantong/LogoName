//
//  StoreRow.swift
//  LogoName
//
//  Created by Nhật Quân on 06/08/2023.
//

//import SwiftUI
//
//struct StoreRow: View {
//    var body: some View {
//
//        var supplementstore: SupplementStore
//        HStack{
//            supplementstore.imageName
//            VStack{
//                Text(supplementstore.description)
//                VStack{
//                    Text(supplementstore.shortDesccription)
//                        .font(.system(size: 12))
//                }
//            }
//
//
//        }
//    }
//}
//
//struct StoreRow_Previews: PreviewProvider {
//    static var previews: some View {
//        Group{
//            StoreRow(supplementstore: supplementstores[0])
//                .previewLayout(.fixed(width: 300, height: 70))
//            StoreRow(supplementstore: supplementstores[1])
//                .previewLayout(.fixed(width: 300, height: 70))
//        }
//    }
//}


 import SwiftUI

 struct StoreRow: View {
     var supplementstore: SupplementStore
     
     var body: some View {
         HStack {
             supplementstore.imageName
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .frame(width: 80, height: 80)
             VStack{
                 Text(supplementstore.name)
                 Text(supplementstore.shortDesccription)
             }
             
         }
     }
 }

 struct StoreRow_Previews: PreviewProvider {
     static var previews: some View {
         Group {
             StoreRow(supplementstore: supplementstores[0])
                 .previewLayout(.fixed(width: 300, height: 70))
            StoreRow(supplementstore: supplementstores[1])
                 .previewLayout(.fixed(width: 300, height: 70))
         }
     }
 }
 


