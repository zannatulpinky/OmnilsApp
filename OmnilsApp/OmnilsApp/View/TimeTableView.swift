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
            }.onAppear(){
                viewModel.fetchData()
            }
        }
    }
}

struct TimeTableView_Previews: PreviewProvider {
    static var previews: some View {
        TimeTableView()
    }
}
