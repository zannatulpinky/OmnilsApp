//
//  TimeTableViewModel.swift
//  OmnilsApp
//
//  Created by Zannatul Pinky on 2022-11-11.
//

import Foundation
import Firebase

class TimeTableViewModel: ObservableObject {
    @Published var timeTable = [TimeTableModel]()
    
    // code to fetch data
    
    private var db = Firestore.firestore()
    
    func fetchData() {
        db.collection("timeTable").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No document")
                return
            }
            
            self.timeTable = documents.map { queryDocumentSnapshot -> TimeTableModel in
                let data = queryDocumentSnapshot.data()
                
                let id = queryDocumentSnapshot.documentID
                let date = data["data"] as? String ?? ""
                let startTime = data["startTime"] as? String ?? ""
                let finishTime = data["FinishTime"] as? String ?? ""
                let person = data["Person"] as? String ?? ""
                
                return TimeTableModel(id: id, date: date, starTime: startTime, finishTime: finishTime, person: person)
                
                
            }
            
        }
    }
}
