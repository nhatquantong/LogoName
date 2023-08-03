//
//  ContentView.swift
//  LogoName
//
//  Created by Quan Tong Nhat on 28/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showInfoView = false
    var body: some View {
//        VStack{
//            LinearGradient(colors: [Color("lighter green"),Color("lightest green")], startPoint: .topLeading, endPoint: .bottomTrailing)
//                .edgesIgnoringSafeArea(.all)
//            VStack {
//                Text("Hello, world!")
//                    .foregroundColor(.black)
//
//            }.padding(.top)
//
//
//            VStack {
//                Button("Show Info") {
//                    showInfoView.toggle()
//                }
//                .padding()
//                .foregroundColor(Color("green"))
//                .background(Color.white)
//                .cornerRadius(10)
//            }
//            .sheet(isPresented: $showInfoView) {
//                TestingInfoView()
//            }
//        }
        VStack{
            Image("supplement")
                .resizable()
                .padding(.top,80)
                .padding(.bottom,64)
                .aspectRatio(contentMode: .fit)
                
                
                
            Text("My Supplement stores")
            Text("Unlock Your Potential: Embrace Health, Embrace Fitness!")
            
            Button("Show Info") {
                showInfoView.toggle()
            }.padding()
                            .foregroundColor(Color("green"))
                            .background(Color.white)
                            .cornerRadius(10)
                            .sheet(isPresented: $showInfoView) {
                                TestingInfoView()
                            }
            Button("View my Store") {
                showInfoView.toggle()
            }.padding()
                            .foregroundColor(Color("green"))
                            .background(Color.white)
                            .cornerRadius(10)
                            .sheet(isPresented: $showInfoView) {
                                TestingInfoView()
                            }
            
            
            Spacer()
        }
        .foregroundColor(.black)
        .padding(.horizontal)
        .multilineTextAlignment(.center)
        .background{LinearGradient(colors: [Color("lighter green"),Color("lightest green")], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
