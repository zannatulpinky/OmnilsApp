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
                .opacity(0.25)
                .ignoresSafeArea()
            
            VStack() {
                Spacer()
                
                Text ("OMNILS")
                    .font(.largeTitle)
                    .foregroundColor(Color.green)
                    .fontWeight(.heavy)
                    Spacer()
                
                TextField("Email", text: $email)
                    .padding()
                    .background()
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background()
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                Button(action: {
                    
                }, label: {
                    Text("LogIn")
                        .padding()
                        .background(.green)
                        .cornerRadius(5.0)
                        .foregroundColor(.white)
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
