//
//  pickup.swift
//  QuickPick-Up
//
//  Created by Celeste, Hunter T (celes002) on 4/25/23.
//

import Foundation

struct PickUpWriter {
    var dataBase = NoSQLDB()
    
    func Writer(address: String, name: String, amount: String, date: String) {
        var pickupData: [String: Any] = [
            "address": address,
            "name":  name,
            "amount":  amount,
            "date":  date
        ]
        
        
        
    }
}
