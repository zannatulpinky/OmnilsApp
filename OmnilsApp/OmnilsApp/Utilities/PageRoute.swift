//
//  PageRoute.swift
//  OmnilsApp
//
//  Created by Zannatul Pinky on 2022-11-07.
//

import Foundation
import Firebase


enum Page {
    case SignIn
    case SignUp
    case Home
    case TimeTable
    case AddTimeTable
}

class ViewRouter : ObservableObject {
    @Published var currentPage:Page = Auth.auth().currentUser?.email ?? "" == "" ? .SignIn : .Home
}
