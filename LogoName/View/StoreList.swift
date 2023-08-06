//
//  StoreList.swift
//  LogoName
//
//  Created by Nhật Quân on 06/08/2023.
//

import SwiftUI

struct StoreList: View {
    @State private var searchText = ""
  
    
    var body: some View {
        ZStack {
            Color.yellow 
            .edgesIgnoringSafeArea(.all)
            NavigationView {
                    VStack {
                        
                        SearchBar(searchText: $searchText)
                        List(filteredStores) { supplementstore in
                            NavigationLink(destination: SupplementStoreCard(supplementstore: supplementstore)) {
                                StoreRow(supplementstore: supplementstore)
                                
                                
                            }
                           
                        }
                        
                        .navigationTitle("My Supplement Stores")

                    }.background(Color.clear)
            }
        }
           
        
        var filteredStores: [SupplementStore] {
            if searchText.isEmpty {
                return supplementstores
            } else {
                return supplementstores.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
            }
        }
    }

    
    
    struct StoreList_Previews: PreviewProvider {
        static var previews: some View {
            StoreList()
        }
    }
}
