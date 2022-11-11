//
//  TimeTableView.swift
//  OmnilsApp
//
//  Created by Zannatul Pinky on 2022-11-01.
//

import SwiftUI

let gradient3 = LinearGradient(colors: [Color.white,Color.green], startPoint: .top, endPoint: .bottom)

struct TimeTableView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @ObservedObject var viewModel = TimeTableViewModel()
    
    var body: some View {
        
        ZStack {
            gradient3
                .opacity(0.20)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Button(action: {
                        viewRouter.currentPage = .Home
                        
                    }, label: {
                        Image(systemName: "multiply.circle.fill")
                            .foregroundColor(.black)
                        
                    })
                    Text("Booking People")
                        .fontWeight(.semibold)
                    
                    
                    Button(action: {
                        viewRouter.currentPage = .AddTimeTable
                        
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.black)
                        
                    })
                    
                }
                
                List {
                    ForEach(viewModel.timeTable, id:  \.self) { data in
                        VStack (alignment: .leading) {
                            HStack {
                                Button(action: {
                                    
                                }, label: {
                                    Image(systemName: "trash.circle.fill")
                                })
                                
                                VStack {
                                    Text("Start")
                                    Text(data.starTime)
                                }
                                VStack {
                                    Text("Finish")
                                    Text(data.finishTime)
                                }
                                VStack {
                                    Text("Cock")
                                    Text(data.person)
                                }
                            }
                            
                        }
                    }
                }.onAppear {
                    viewModel.fetchData()
                
            }
            }
        }
    }
}

struct TimeTableView_Previews: PreviewProvider {
    static var previews: some View {
        TimeTableView()
    }
}
