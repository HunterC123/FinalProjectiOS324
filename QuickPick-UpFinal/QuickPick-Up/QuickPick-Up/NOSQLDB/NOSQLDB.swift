/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import Foundation
import Firebase
import FirebaseFirestore

//Class that handles all Firebase Operations
class NoSQLDB: ObservableObject {
    
    @Published var allUsers = [mainUser]()
    @Published var allLocations = [Location]()
    @Published var allItems = [Item]()
    
    let db = Firestore.firestore()
    
    //Gets Users from Firebase Database
    func getUsers() {
        db.collection("users").getDocuments() { (snapshot, err) in
            if let err = err {
                print("Error: \(err)")
            } else {
                DispatchQueue.main.async {
                    for document in snapshot!.documents {
                        self.allUsers.append(mainUser(id: document.documentID, firstName: document["firstName"] as? String ?? "" , lastName: document["lastName"] as? String ?? "" ,
                                                      userName: document["userName"] as? String ?? "" , email: document["email"] as? String ?? "" , phoneNumber: document["phoneNumber"] as? String ?? "", password: document["password"] as? String ?? ""))
                    }
                }
            }
        }
    }
    
    //Gets Locations from Firebase Database
    func getLocations() {
        db.collection("locations").getDocuments() { (snapshot, err) in
            if let err = err {
                print("Error: \(err)")
            } else {
                DispatchQueue.main.async {
                    for document in snapshot!.documents {
                        self.allLocations.append(Location(id: document.documentID, address1: document["address1"] as? String ?? "" , address2: document["address2"] as? String ?? "" ,
                                                      state: document["state"] as? String ?? "" , city: document["city"] as? String ?? "" , zipCode: document["zipCode"] as? String ?? "", phoneNumber: document["phoneNumber"] as? String ?? ""))
                    }
                }
            }
        }
    }
    
    //Gets Items from Firebase Database
    func getItems() {
        db.collection("items").getDocuments() { (snapshot, err) in
            if let err = err {
                print("Error: \(err)")
            } else {
                DispatchQueue.main.async {
                    for document in snapshot!.documents {
                        self.allItems.append(Item(id: document.documentID, name: document["name"] as? String ?? "" , amount: document["amount"] as? String ?? "" ,
                                                      date: document["date"] as? String ?? "" , address: document["address"] as? String ?? ""))
                    }
                }
            }
        }
    }
    
    //Writes to pick-up database
    func addPickUp(address: String, name: String, amount: String, date: String) {
        let pickupData: [String: Any] = [
            "address": address,
            "name":  name,
            "amount":  amount,
            "date":  date
        ]
        
        db.collection("PickUp").addDocument(data: pickupData) { error in
            if let error = error {
                print("Error adding Document: \(error)")
            } else {
                print("Document Added")
            }
        }
    }
    
    //Writes to user database
    func addUser(firstName: String, lastName: String, userName: String, email: String, phoneNumber: String, password: String) {
        let userData: [String: Any] = [
            "firstName": firstName,
            "lastName":  lastName,
            "userName":  userName,
            "email": email,
            "phoneNumber": phoneNumber,
            "password": password
        ]
        
        db.collection("users").addDocument(data: userData) { error in
            if let error = error {
                print("Error adding Document: \(error)")
            } else {
                print("Document Added")
            }
        }
    }
    
    func printUsers() {
        print(allUsers.count)
    }
}


