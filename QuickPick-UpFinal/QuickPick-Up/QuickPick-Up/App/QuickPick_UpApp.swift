/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import SwiftUI
import Firebase

@main
struct QuickPick_UpApp: App {
    
    init() {
        FirebaseApp.configure()
        print("Hello")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            //SelectLocationView()
        }
    }
}
