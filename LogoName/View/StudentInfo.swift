//
//  TestingInfoView.swift
//  LogoName
//
//  Created by Quan Tong Nhat on 28/07/2023.
//

import SwiftUI

struct  StudentInfo: View {
    @Environment(\.presentationMode) var presentationMode

        var body: some View {
            ZStack{
                Color("wood")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("StudentInfo")
                        .clipShape(Circle())
                                   .overlay(Circle().stroke(Color(.white),lineWidth: 4))
                                   .shadow(radius: 7)
                    Text("Tong Nhat Quan")
                        .font(.custom("Quicksand-Bold", size: 30))
                        .padding()
                        .textCase(.uppercase)
                    Text("s3819347")
                        .font(.custom("Quicksand-SemiBold", size: 20))
                        .padding()
                        .textCase(.uppercase)
                    Text("BP162")
                        .font(.custom("Quicksand-SemiBold", size: 20))
                        .padding()
                        .textCase(.uppercase)
                    Button() {
                        // Close the small view when the button is clicked
                        presentationMode.wrappedValue.dismiss()
                    }label: {
                        Text("Go back")
                            .frame(maxWidth: .infinity)
                            .font(.custom("Quicksand-Medium", size: 20))
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(colors: [Color("lighter green"),Color("lightest green")], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .cornerRadius(10)
              
                    
                }
                
                .padding()
            }
            
        }
        
    
}

struct  StudentInfo_Previews: PreviewProvider {
    static var previews: some View {
       StudentInfo()
    }
}
