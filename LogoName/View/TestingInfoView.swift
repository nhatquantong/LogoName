//
//  TestingInfoView.swift
//  LogoName
//
//  Created by Quan Tong Nhat on 28/07/2023.
//

import SwiftUI

struct TestingInfoView: View {
    @Environment(\.presentationMode) var presentationMode

        var body: some View {
            VStack {
                Text("Tong Nhat Quan")
                    .font(.title)
                    .padding()
                Text("s3819347")
                    .padding()
                Text("BP162")
                    .padding()
                Button("Dismiss") {
                    // Close the small view when the button is clicked
                    presentationMode.wrappedValue.dismiss()
                }
                .padding()
                .foregroundColor(.white)
                .background(Color("green"))
                .cornerRadius(10)
            }
            .padding()
        }
}

struct TestingInfoView_Previews: PreviewProvider {
    static var previews: some View {
        TestingInfoView()
    }
}
