/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import SwiftUI

//Main View
struct SignUpView: View {
    
    //All fields
    @State var firstName = ""
    @State var lastName = ""
    @State var userName = ""
    @State var email = ""
    @State var password = ""
    @State var cpassword = ""
    @State var phoneNumber = ""
    
    @ObservedObject var dataBase = NoSQLDB()
    @State var signUp = logInSystem()
    
    @State var errortext: String = ""
    
    //Constructor
    init() {
        dataBase.getUsers()
    }
    
    //Main View
    var body: some View {
        ZStack {
            ExitBackGroundView()
                .hidden()
            VStack {
                TitleTextView(text: "Sign-Up")
                SignUpBoxView()
                
                //Sign-up system if passwords are same and username does not match
                Button( action: {
                    let temp = logInSystem().signUp(userName: userName, password: password, cpassword: cpassword)
                    print(temp)
                    if (temp == "Username Already Exists") {
                        errortext = "Username Already Exists"
                    } else if (temp == "Passwords do not match") {
                        errortext = "Passwords do not match"
                    } else {
                        if (firstName != "" && lastName != "" && userName != "" && email != "" && password != "" && phoneNumber != "") {
                            dataBase.addUser(firstName: firstName, lastName: lastName, userName: userName, email: email, phoneNumber: phoneNumber, password: password)
                            navigateToSelectLocView()
                        } else {
                            errortext = "Fields Incomplete"
                        }
                    }
                }) {
                    ZStack {
                        MediumBlueRectangle()
                        LargeButtonTextView(text: "Sign-Up")
                    }
                }
                

            }
            VStack {
                TextField("First Name", text: $firstName)
                    .padding(.bottom, 46)
                TextField("Last Name", text: $lastName)
                    .padding(.bottom, 46)
                TextField("Username", text: $userName)
                    .padding(.bottom, 46)
                TextField("Email", text: $email)
                    .padding(.bottom, 46)
                TextField("Email", text: $phoneNumber)
                    .padding(.bottom, 46)
                TextField("Password", text: $password)
                    .padding(.bottom, 46)
                TextField("Confirm Password", text: $cpassword)
                    .padding(.bottom, 46)
            }
            .padding(.top, 34)
            .padding(.leading, 110)
            AdditionalTextView(text: errortext)
                .padding(.top, 528)
                .bold()
        }
        .background(Color("BackgroundColor"))
    }
    
    //Nagivates to Select Location View
    func navigateToSelectLocView() {
        let curLoc = SelectLocationView()
        let navigationController = UINavigationController(rootViewController: UIHostingController(rootView: SelectLocationView()))
        UIApplication.shared.windows.first?.rootViewController = navigationController
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
}

//Preview
struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SignUpView()
            SignUpView()
                .preferredColorScheme(.dark)
        }
    }
}
