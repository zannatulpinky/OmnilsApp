//
//  HomePageView.swift
//  OmnilsApp
//
//  Created by Zannatul Pinky on 2022-11-01.
//

import SwiftUI
import Firebase

let gradient2 = LinearGradient(colors: [Color.white,Color.green], startPoint: .top, endPoint: .bottom)

struct HomePageView: View {
    @EnvironmentObject var viewRouter: ViewRouter

    var body: some View {
       
        ZStack{
            gradient1
                .opacity(0.20)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    
                    Text("Köket")
                        .fontWeight(.heavy)
                        .padding(.top, 20)
                }
            
                Image("foodImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:  400, height: 180)
                    .padding(.top, 30)
                    .cornerRadius(5.0)
                    .padding(.top, 20)
                
                ScrollView {
                    Spacer()
                    Button(action: {
                        viewRouter.currentPage = .TimeTable

                    }, label: {
                        
                        Text("KOCKAR")
                            .fontWeight(.medium)
                            .padding()
                            .foregroundColor(.black)
                    }).frame(maxWidth: .infinity,minHeight: 44)
                        .background(.white)
                        .opacity(0.9)
                        .cornerRadius(5.0)
                        .padding(.top, 20)
                    
                    Button(action: {
                        
                    }, label: {
                        
                        Text("KÖKSMÄSTARE")
                            .fontWeight(.medium)
                            .padding()
                            .foregroundColor(.black)
                    }).frame(maxWidth: .infinity,minHeight: 44)
                        .background(.white)
                        .opacity(0.9)
                        .cornerRadius(5.0)
                    
                    Button(action: {
                        
                    }, label: {
                        
                        Text("KÖKSBITRÄDEN")
                            .fontWeight(.medium)
                            .padding()
                            .foregroundColor(.black)
                    }).frame(maxWidth: .infinity,minHeight: 44)
                        .background(.white)
                        .opacity(0.9)
                        .cornerRadius(5.0)
                    
                    Button(action: {

                    }, label: {
                        
                        Text("KALLSKÄNKOR")
                            .fontWeight(.medium)
                            .padding()
                            .foregroundColor(.black)
                    }).frame(maxWidth: .infinity,minHeight: 44)
                        .background(.white)
                        .opacity(0.9)
                        .cornerRadius(5.0)
                    
                    Button(action: {
                        do {
                            try Auth.auth().signOut()
                        }
                        catch let signOutError as NSError{
                            print("Error signing out: %@", signOutError)
                        }
                        viewRouter.currentPage = .SignIn

                    }, label: {
                        Text("LogOut")
                            .bold()
                            .padding()
                            .foregroundColor(.white)
                    }).frame(maxWidth: .infinity,minHeight: 44)
                        .background(.green)
                        .opacity(0.9)
                        .cornerRadius(5.0)
                }
            }
        }
    }
}
struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
