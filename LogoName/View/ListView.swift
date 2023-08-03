//
//  ListView.swift
//  LogoName
//
//  Created by Quan Tong Nhat on 03/08/2023.
//

import SwiftUI


struct ListView: View {
    let alphabets = list
    
    var body: some View {
        NavigationView{
            List{
                ForEach(alphabets, id: \.self){ alphabet in
                    NavigationLink(destination: Text(alphabet)){
                        Text(alphabet)
                    }.padding()
                }
                .navigationTitle("Alphabet")
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
