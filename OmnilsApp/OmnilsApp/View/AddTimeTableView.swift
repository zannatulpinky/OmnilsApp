//
//  AddTimeTableView.swift
//  OmnilsApp
//
//  Created by Zannatul Pinky on 2022-11-01.
//

import SwiftUI
import Firebase

let gradient4 = LinearGradient(colors: [Color.white,Color.green], startPoint: .top, endPoint: .bottom)

struct AddTimeTableView: View {
    
    @State var date = ""
    @State var starTime = ""
    @State var finishTime = ""
    @State var person = ""
    @EnvironmentObject var viewRouter: ViewRouter
    let db = Firestore.firestore()
    
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
                        addTimeTableToFirestore(date: date, startTime: starTime, finishTime: finishTime, person: person)
                        viewRouter.currentPage = .TimeTable
                        
                        
                    }, label: {
                        Text("Save")
                            .padding()
                            .background(.green)
                            .opacity(0.9)
                            .cornerRadius(5.0)
                            .foregroundColor(.white)
                    })
                    
                    Button(action: {
                        viewRouter.currentPage = .TimeTable
                        
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
    
    func addTimeTableToFirestore(date:String, startTime:String, finishTime:String, person:String) {
        let timeTable = TimeTableModel(date: date, starTime: startTime, finishTime:finishTime, person: person)
        db.collection("timeTable").document().setData(timeTable.dictionary){ error in
            if error != nil {
                print(error)
            } else {
                viewRouter.currentPage = .TimeTable
            }
            
        }
            
    }
}

struct AddTimeTableView_Previews: PreviewProvider {
    static var previews: some View {
        AddTimeTableView()
    }
}
