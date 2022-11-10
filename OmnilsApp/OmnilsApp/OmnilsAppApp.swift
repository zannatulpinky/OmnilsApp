//
// OmnilsAppApp.swift
// OmnilsApp
// Created by Zannatul Pinky on 2022-10-30.
//

import SwiftUI
import FirebaseCore

@main
struct OmnilsAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    @StateObject var viewRouter = ViewRouter()

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(viewRouter)
            
        }
    }
}
