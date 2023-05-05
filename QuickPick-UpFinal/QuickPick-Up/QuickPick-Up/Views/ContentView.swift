/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/


//LOGIN VIEW
import SwiftUI

struct ContentView: View {
    @ObservedObject var dataBase = NoSQLDB()
    
    //Fields
    @State var usernameInputString = "BobFied"
    @State var passwordInputString = "1234"
    
    @State var signUp = logInSystem()
    @State var errorText = ""
    
    @State  var darkModeModule: Bool = false
   
    //Constructor
    init() {
        dataBase.getUsers()
        print("Initialization Complete")
    }
    
    //Main Body View
    var body: some View {
        NavigationView {
            ZStack {
                //See ExitBackGroundView for more Details
                ExitBackGroundView()
                    .hidden()
                
               
                
                //Main View including fields
                VStack {
                    
                    TitleTextView(text: "Login")
                    ZStack {
                        LoginBoxView()
                        TextField("Username", text: $usernameInputString)
                            .padding(.leading, 75.0)
                            .padding(.bottom, 120)
                        TextField("Password", text: $passwordInputString)
                            .padding(.leading, 75.0)
                            .padding(.top, 85)
                        AdditionalTextView(text: errorText)
                            .padding(.top, 205)
                            .bold()
                        
                    }
                    
                    
                    //Log-In
                    Button(action: {
                        if (signUp.logIn(userName: usernameInputString, password: passwordInputString)) {
                            navigateToSelectLocView()
                        } else {
                            errorText = "Incorrect Login"
                        }
                    }) {
                        ZStack {
                            MediumRedRectangle()
                            LargeButtonTextView(text: "Log In")
                        }
                    }
                    
                    
                    
                    //Sign-In Box
                    NavigationLink (destination: SignUpView()) {
                        ZStack {
                            SmallRedRectangle()
                            SmallButtonTextView(text: "Sign-Up")
                        }
                    }.buttonStyle(PlainButtonStyle())
                }
                .padding(.top, 30)

            }
            .background(Color("BackgroundColor"))
        }
    }
    
    //Navigates to Select View
    func navigateToSelectLocView() {
        let curLoc = SelectLocationView()
        let navigationController = UINavigationController(rootViewController: UIHostingController(rootView: SelectLocationView()))
        UIApplication.shared.windows.first?.rootViewController = navigationController
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
}

//Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
