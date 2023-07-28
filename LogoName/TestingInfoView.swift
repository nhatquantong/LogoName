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
                Text("Information")
                    .font(.title)
                    .padding()
                Text("This is the information you want to display.")
                    .padding()
                Button("Dismiss") {
                    // Close the small view when the button is clicked
                    presentationMode.wrappedValue.dismiss()
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
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
