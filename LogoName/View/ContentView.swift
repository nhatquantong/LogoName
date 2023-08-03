//
//  ContentView.swift
//  LogoName
//
//  Created by Quan Tong Nhat on 28/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showInfoView = false
    @State private var showListView = false
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
        NavigationView{
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
                NavigationLink(destination: ListView(), isActive: $showListView) {
                                    EmptyView()
                                }
                                .hidden()
                Button("View my Store") {
                    showListView = true
                }.padding()
                                .foregroundColor(Color("green"))
                                .background(Color.white)
                                .cornerRadius(10)
                                
                
                
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
