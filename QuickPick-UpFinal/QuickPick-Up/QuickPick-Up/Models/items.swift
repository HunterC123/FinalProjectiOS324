/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import Foundation

//Structs for items in Firebase database
struct Item {
    var id: String
    var name: String
    var amount: String
    var date: String
    var address: String
}

//Compares items against an address
struct ItemCompare {
    func compareItem(address: String, item: Item) -> Bool {
        if (address == item.address) {
            return true
        } else {
            return false
        }
    }
}
