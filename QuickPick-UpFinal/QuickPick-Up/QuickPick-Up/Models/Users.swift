/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import Foundation

struct logInSystem {
    var dataBase = NoSQLDB()
    var UserList: [mainUser] = []
    
    //Initializes database and userlist
    init() {
        dataBase.getUsers()
        for i in dataBase.allUsers {
            UserList.append(i)
            //print("\(i.firstName)")
        }
    }
    
    //Adds user to array
    mutating func userAdd(aUser: mainUser) {
        UserList.append(aUser)
    }
    
    //Clears userlist
    mutating func locationClear() {
        UserList.removeAll()
    }
    
    //Prints for testing
    func printLoc(aUser: mainUser) {
        print("\(aUser.firstName) " + "\(aUser.lastName) " + "\(aUser.lastName)")
    }
    
    //Sign-up check for system
    func signUp(userName: String, password: String, cpassword: String) -> String {
        if (password == cpassword) {
            return ""
        } else {
            return "Passwords do not match"
        }
    }
    
    //Login system checking against database
    func logIn(userName: String, password: String) -> Bool {
        for i in dataBase.allUsers {
            if (i.userName == userName && i.password == password) {
                return true
            } else {
            }
        }
        return false
    }
}

//Struct for all users
struct mainUser {
    var id: String
    var firstName: String
    var lastName: String
    var userName: String
    var email: String
    var phoneNumber: String
    var password: String
}
