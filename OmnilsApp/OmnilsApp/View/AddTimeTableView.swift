//
//  AddTimeTableView.swift
//  OmnilsApp
//
//  Created by Zannatul Pinky on 2022-11-01.
//

import SwiftUI

let gradient4 = LinearGradient(colors: [Color.white,Color.green], startPoint: .top, endPoint: .bottom)


struct AddTimeTableView: View {
    
    @State var date = ""
    @State var starTime = ""
    @State var finishTime = ""
    @State var person = ""
    
    var body: some View {
        
        ZStack {
            gradient
                .opacity(0.20)
                .ignoresSafeArea()
            
            VStack() {
                Spacer()
                
                Text ("Add Time Table")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    Spacer()
                
                TextField("Date", text: $date)
                    .padding()
                    .background()
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                TextField("StartTime", text: $starTime)
                    .padding()
                    .background()
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                TextField("FinishTime", text: $finishTime)
                    .padding()
                    .background()
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                TextField("Person", text: $person)
                    .padding()
                    .background()
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Text("Save")
                            .padding()
                            .background(.green)
                            .opacity(0.9)
                            .cornerRadius(5.0)
                            .foregroundColor(.white)
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Cancel")
                            .padding()
                            .background(.green)
                            .opacity(0.9)
                            .cornerRadius(5.0)
                            .foregroundColor(.white)
                    })
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

struct AddTimeTableView_Previews: PreviewProvider {
    static var previews: some View {
        AddTimeTableView()
    }
}
