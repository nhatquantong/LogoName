//
//  StoreList.swift
//  LogoName
//
//  Created by Nhật Quân on 06/08/2023.
//

import SwiftUI

struct StoreList: View {
    @State private var searchText = ""
    @State private var isToggled = false

    // Create a @AppStorage property to store the dark mode state
    @AppStorage("isDarkMode") private var isDarkMode = false

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    SearchBar(searchText: $searchText)
                    Button(action: {
                        isDarkMode.toggle()
                    }) {
                        Image(systemName: isDarkMode ? "sun.max.fill" : "moon.fill")
                            .font(.title)
                            .padding()
                    }
                    .foregroundColor(.primary)
                }
                Toggle(isOn: $isToggled) {
                    Text("Show stores recommended by staff")
                }
                .frame(width: 350)
                .padding() // Add some padding to the HStack

                // Add a button to switch between light and dark mode
                

                List(filteredStores) { supplementstore in
                    NavigationLink(destination: SupplementStoreCard(supplementstore: supplementstore)
                       ) {
                        StoreRow(supplementstore: supplementstore)

                    }
                    
                }
            }
        }.navigationBarBackButtonHidden(true)
//        .ignoresSafeArea(edges: .top) // Make the navigation bar extend to the top edge
        .preferredColorScheme(isDarkMode ? .dark : .light) // Set the preferred color scheme based on the isDarkMode state
        .onAppear {
            // Set the initial value of isDarkMode to false when the view appears for the first time
            isDarkMode = false
        }
    }

    var filteredStores: [SupplementStore] {
        if searchText.isEmpty && !isToggled {
            return supplementstores
        } else {
            return supplementstores.filter { store in
                if isToggled {
                    return store.name.localizedCaseInsensitiveContains(searchText) || store.name.localizedCaseInsensitiveContains("gym")
                } else {
                    return store.name.localizedCaseInsensitiveContains(searchText)
                }
            }
        }
    }
}

struct StoreList_Previews: PreviewProvider {
    static var previews: some View {
        StoreList()
    }
}
