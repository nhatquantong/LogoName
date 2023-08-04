//
//  ListView.swift
//  LogoName
//
//  Created by Quan Tong Nhat on 03/08/2023.
//

import SwiftUI


struct ListView: View {
    let alphabets = list
    @State private var searchText = ""
    @State private var filteredItems: [String] = ["Apple", "Banana", "Orange", "Grapes", "Mango"]
    
    var body: some View {
        
        //            List{
        //                ForEach(alphabets, id: \.self){ alphabet in
        //                    NavigationLink(destination: Text(alphabet)){
        //                        Text(alphabet)
        //                    }.padding()
        //                }
        //                .navigationTitle("Alphabet")
        //                            }
        //        }
        List {
            Section(header: SearchBar(searchText: $searchText)) {
                ForEach(filteredItems.filter {
                    searchText.isEmpty ? true : $0.localizedCaseInsensitiveContains(searchText)
                }, id: \.self) { item in
                    NavigationLink(destination: Text(item)){
                        Text(item)
                    }.padding()
                }
            }
        }
        .navigationBarTitle("Fruits")
    
        
    }}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
