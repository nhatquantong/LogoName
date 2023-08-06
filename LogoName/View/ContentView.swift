//
//  ContentView.swift
//  LogoName
//
//  Created by Quan Tong Nhat on 28/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showStudentInfo = false
    @State private var showListView = false
    @State private var animateGradient: Bool = false
    var body: some View {
        NavigationView{
            VStack{
                Text("My Supplement Stores")
                    .foregroundColor(.white)
                    .bold()
                    .font(.custom("Quicksand-Bold", size: 40))
                    .padding(.bottom,10)

                Text("Unlock Your Potential: Embrace Health, Embrace Fitness!")
                    .foregroundColor(.white)
                    .font(.custom("Quicksand-Medium", size: 20))
                Image("supplement2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                    .padding(.bottom,50)
                
    
                Button{
                    showStudentInfo.toggle()
                }label: {
                    Text("Creator's Information")
                        .frame(maxWidth: .infinity)
                        .font(.custom("Quicksand-Bold", size: 20))
                }
                .padding()
                    .foregroundColor(Color.white)
               
                    .background(Color.clear)
                    .overlay(
 RoundedRectangle(cornerRadius: 30)
 .stroke(Color.white, lineWidth: 3))
                    .sheet(isPresented: $showStudentInfo) {
                        StudentInfo()
                    }
                    
 
                VStack{
                    Text("")
                }
     
                VStack{
                    Text("")
                        .padding(.top,20)
                }
                NavigationLink(destination: StoreList()) {
                                   Text("View My Stores")
                                       .frame(maxWidth: .infinity)
                                       .font(.custom("Quicksand-Bold", size: 20))
                               }
                               .padding()
                               .foregroundColor(Color.white)
                               .background(Color.clear)
                               .overlay(
                                   RoundedRectangle(cornerRadius: 30)
                                       .stroke(Color.white, lineWidth: 3)
                               )

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
