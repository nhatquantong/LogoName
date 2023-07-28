//
//  Testing.swift
//  LogoName
//
//  Created by Quan Tong Nhat on 28/07/2023.
//

import SwiftUI

struct Testing: View {
    @State private var showInfoView = false

        var body: some View {
            VStack {
                Button("Show Info") {
                    showInfoView.toggle()
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
            }
            .sheet(isPresented: $showInfoView) {
                TestingInfoView()
            }
       }}

struct Testing_Previews: PreviewProvider {
    static var previews: some View {
        Testing()
    }
}
