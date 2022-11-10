//
//  TimeTableModel.swift
//  OmnilsApp
//
//  Created by Zannatul Pinky on 2022-11-08.
//

import Foundation

struct TimeTableModel: Codable,Identifiable,Hashable {
   
    var id = UUID().uuidString
    var date = ""
    var starTime = ""
    var finishTime = ""
    var person = ""
    
    var dictionary: [String: Any] {
        let data = (try? JSONEncoder().encode(self)) ?? Data()
        return (try? JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any]) ?? [:]
    }
}
