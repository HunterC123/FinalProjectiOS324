/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import SwiftUI


struct SettingsView: View {
    @State private var isDarkMode = false
    @State var systemSettings = Settings()
    
    @Binding  var darkModeModule: Bool
    
    //Main View
    var body: some View {
        ZStack {
            VStack {
                TitleTextView(text: "Settings")
                VStack {
                    ZStack {
                        ZStack {
                            SettingsRedRectangle()
                                .padding(.leading, 290)

                            Toggle(isOn: $isDarkMode)
                            {
                                SettingsTextView(text: "Dark Mode")
                                
                            }
                            .toggleStyle(SwitchToggleStyle(tint: Color("AccentOrange")))
                            .padding(.trailing, 30)
                            .padding(.leading, 30)
                        }
                            SettingsBorderRectangle()
                                .padding(.leading, 285)
                        }
                }
            
                //Switches background to Darkmode
                Button(action: {
                    darkModeModule = isDarkMode
                    print(isDarkMode)
                    print(darkModeModule)
                }) {
                    ZStack {
                        MediumRedRectangle()
                        LargeButtonTextView(text: "Save")
                    }
                }
                
                Spacer()
            }
            .padding(.top, 100)
        }
        .background(Color("BackgroundColor"))
        .environment(\.colorScheme, darkModeModule ? .dark : .light)
    }
       
}

//Previews
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsView(darkModeModule: .constant(true))
            SettingsView(darkModeModule: .constant(true))
                .preferredColorScheme(.dark)
        }
        
    }
}
