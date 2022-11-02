//
//  HomePageView.swift
//  OmnilsApp
//
//  Created by Zannatul Pinky on 2022-11-01.
//

import SwiftUI

let gradient2 = LinearGradient(colors: [Color.white,Color.green], startPoint: .top, endPoint: .bottom)


struct HomePageView: View {
    var body: some View {
        ZStack{
            gradient1
                .opacity(0.25)
                .ignoresSafeArea()
            
            VStack {
                
                Image("foodImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:  400, height: 180)
                    .padding(.bottom, 350)
                    .cornerRadius(5.0)
                
                ScrollView {
                    Button(action: {
                        
                    }, label: {
                        
                        Text("KOCKER")
                            .bold()
                            .padding()
                            .background(.white)
                            .cornerRadius(5.0)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        
                        Text("KOCKER")
                            .bold()
                            .padding()
                            .background(.white)
                            .cornerRadius(5.0)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        
                        Text("KOCKER")
                            .bold()
                            .padding()
                            .background(.white)
                            .cornerRadius(5.0)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        
                        Text("KOCKER")
                            .bold()
                            .padding()
                            .background(.white)
                            .cornerRadius(5.0)
                            .foregroundColor(.black)
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Text("LogOut")
                            .bold()
                            .padding()
                            .background(.green)
                            .cornerRadius(5.0)
                            .foregroundColor(.white)
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
