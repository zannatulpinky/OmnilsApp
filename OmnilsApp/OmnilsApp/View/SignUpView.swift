//
//  SignUpView.swift
//  OmnilsApp
//
//  Created by Zannatul Pinky on 2022-11-01.
//

import SwiftUI

let gradient1 = LinearGradient(colors: [Color.white,Color.green], startPoint: .top, endPoint: .bottom)

struct SignUpView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        ZStack {
            
            gradient1
                .opacity(0.20)
                .ignoresSafeArea()
            
            VStack() {
                
                Text ("Resistation Page")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                    .fontWeight(.medium)
                    .padding(.top, 130)
                
                TextField ("Email", text: $email)
                    .padding()
                    .background()
                    .cornerRadius(5.0)
                    .padding(.top, 150)
                
                SecureField ("Password", text: $password)
                    .padding()
                    .background()
                    .cornerRadius(5.0)
                    .padding(.top, 20)
                
                Button (action: {
                    
                }, label: {
                    Text("LogIn")
                        .padding()
                        .background(.green)
                        .opacity(0.9)
                        .cornerRadius(5.0)
                        .foregroundColor(.white)
                        .padding(.top, 20)
                })
                Spacer()
            }
            .padding()
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
