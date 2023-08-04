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
    @State private var animateGradient: Bool = false
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
                    .aspectRatio(contentMode: .fit)
                    .padding(.top,200)
                    .frame(width: 100)
                
                Text("My Supplement Stores")
                    .foregroundColor(.white)
                    .bold()
                Text("Unlock Your Potential: Embrace Health, Embrace Fitness!")
                    .foregroundColor(.white)
                    .bold()
                
                Button("Show Info") {
                    showInfoView.toggle()
                }.padding()
                    .foregroundColor(Color.black)
                    .background(Color(.white))
                    .sheet(isPresented: $showInfoView) {
                        TestingInfoView()
                    }
                Spacer()
                NavigationLink(destination: ListView(), isActive: $showListView) {
                    EmptyView()
                }
                .hidden()
                Button("View my Store") {
                    showListView = true
                }.padding()
                    .foregroundColor(Color.black)
                    .background(Color.white)
                    .cornerRadius(10)
                    
                
                
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity) // Set the frame to cover the whole screen
            .edgesIgnoringSafeArea(.all)
            .foregroundColor(.black)
            .padding(.horizontal)
            .multilineTextAlignment(.center)
            .background{LinearGradient(colors: [Color("lighter green"),Color("lightest green")], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                    .hueRotation(.degrees(animateGradient ? 15 : 0))
                    .onAppear {
                        withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                            animateGradient.toggle()
                        }
                    }
            }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
