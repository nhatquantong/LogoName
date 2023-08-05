//
//  SupplementsStoresRow.swift
//  LogoName
//
//  Created by Nhật Quân on 06/08/2023.
//

import SwiftUI

struct SupplementsStoresRow: View {
    var supplementstore: SupplementStore
    
    var body: some View {
        HStack {
            supplementstore.imageName
                .resizable()
                .frame(width: 50, height: 50)
            Text(supplementstore.name)
        }
    }
    
    struct SupplementsStoresRow_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                SupplementsStoresRow(supplementstore: supplementstores[0])
                    .previewLayout(.fixed(width: 300, height: 70))
                SupplementsStoresRow(supplementstore: supplementstores[1])
                    .previewLayout(.fixed(width: 300, height: 70))
            }
        }
    }
}
