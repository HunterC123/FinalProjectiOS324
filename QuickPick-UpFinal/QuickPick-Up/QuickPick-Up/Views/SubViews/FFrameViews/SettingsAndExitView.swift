/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import SwiftUI

//Parcial view for future use
struct SettingsAndExitView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    //NavigationLink(destination: SettingsView()) {
                      
                    
                    
                    
                   // }
                    Spacer()
                } .buttonStyle(PlainButtonStyle())
                Spacer()
            }
        }
    }
}

struct SettingsAndExitView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsAndExitView()
            SettingsAndExitView()
                .preferredColorScheme(.dark)
        }
    }
}
