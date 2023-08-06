//
//  SearchBar.swift
//  LogoName
//
//  Created by Quan Tong Nhat on 03/08/2023.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String

       var body: some View {
           HStack {
               Image(systemName: "magnifyingglass")
                   .foregroundColor(.gray)
               TextField("Search", text: $searchText)
           }
           .padding(8)
           .background(Color(.systemGray5))
           .cornerRadius(8)
           .frame(width: 280)
       }
}


