//
//  SignInView.swift
//  OmnilsApp
//
//  Created by Zannatul Pinky on 2022-11-01.
//

import SwiftUI
import Firebase

let gradient = LinearGradient(colors: [Color.white,Color.green], startPoint: .top, endPoint: .bottom)

struct SignInView: View {
    
    @State var email = ""
    @State var password = ""
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        
        ZStack {
            gradient
                .opacity(0.20)
                .ignoresSafeArea()
            
            VStack() {
                Spacer()
                
                Text ("OMNILS")
                    .font(.largeTitle)
                    .foregroundColor(Color.green)
                    .opacity(0.9)
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
                    Auth.auth().signIn(withEmail: email, password: password) {(result, error) in
                        if error != nil {
                            print(error?.localizedDescription ?? "")
                        }else {
                            print("success")
                            viewRouter.currentPage = .Home
                        }
                    }
                 
                }, label: {
                    Text("LogIn")
                        .padding()
                        .foregroundColor(.white)
                }).frame(maxWidth: .infinity,minHeight: 44)
                    .background(.green)
                    .opacity(0.9)
                    .cornerRadius(5.0)
                
                Button(action: {
                    viewRouter.currentPage = .SignUp
                    
                }, label: {
                    Text("Dont have account! SignUp")
                        .padding()
                        .opacity(0.9)
                        .cornerRadius(5.0)
                        .foregroundColor(.black)
                })
                Spacer()
            }
            .padding()
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
