//
//  ContentView.swift
//  OmnilsApp
//
//  Created by Zannatul Pinky on 2022-10-30.
//make github rep
//create firebaseauth
//create app screans
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        
        switch viewRouter.currentPage {
            
            case .SignIn:
               SignInView()
            case .SignUp:
               SignUpView()
            case .Home:
               HomePageView()
            case .TimeTable:
               TimeTableView()
            case .AddTimeTable:
               AddTimeTableView()
               
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
