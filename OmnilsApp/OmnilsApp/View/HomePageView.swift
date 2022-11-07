//
//  HomePageView.swift
//  OmnilsApp
//
//  Created by Zannatul Pinky on 2022-11-01.
//

import SwiftUI

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
                    Image(systemName: "keyboard_arrow_right")
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
                
                ScrollView {
                    Button(action: {
                        
                    }, label: {
                        
                        Text("KOCKAR")
                            .fontWeight(.medium)
                            .padding()
                            .background(.white)
                            .cornerRadius(5.0)
                            .foregroundColor(.black)
                            .padding(.top,50)
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        
                        Text("KÖKSMÄSTARE")
                            .fontWeight(.medium)
                            .padding()
                            .background(.white)
                            .cornerRadius(5.0)
                            .foregroundColor(.black)
                            .padding(.top, 10)
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        
                        Text("KÖKSBITRÄDEN")
                            .fontWeight(.medium)
                            .padding()
                            .background(.white)
                            .cornerRadius(5.0)
                            .foregroundColor(.black)
                            .padding(.top, 10)
                    })
                    
                    Button(action: {
                        viewRouter.currentPage = .TimeTable

                    }, label: {
                        
                        Text("KALLSKÄNKOR")
                            .fontWeight(.medium)
                            .padding()
                            .background(.white)
                            .cornerRadius(5.0)
                            .foregroundColor(.black)
                            .padding(.top, 10)
                    })
                    
                    Button(action: {
                        viewRouter.currentPage = .SignIn

                    }, label: {
                        Text("LogOut")
                            .bold()
                            .padding()
                            .background(.green)
                            .opacity(0.9)
                            .cornerRadius(5.0)
                            .foregroundColor(.white)
                            .padding(.top, 10)
                    })
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
