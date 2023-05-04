/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import SwiftUI

//All cell views
struct SelLocCellView: View {
    var city: String
    var address1: String
    var address2: String
    var state: String
    var zipCode: String
    var body: some View {
        RoundedRectangle(cornerRadius: 100)
            .background(RoundedRectangle(cornerRadius: 100)
                .fill(Color("OnBackGroundTextColor")))
            .frame(width: 330, height: 5)
        HStack {
            VStack {
                HStack {
                    LocationNameTextView(text: "\(city)")
                        .padding(.bottom, 1)
                    Spacer()
                }
                HStack {
                    AddressTextView(text: "\(address1) " + " \(address2)" + "\(state)" + " \(zipCode)")
                        .padding(.leading, 10)
                        .padding(.bottom, 1)
                    Spacer()
                }
             /*   HStack {
                    ItemNameTextView(text: "Soap Box")
                        .padding(.leading, 40)
                        .padding(.bottom, 1)
                    Spacer()
                }*/
               // HStack {
                //    AddressTextView(text: "See More")
                   //     .fontWeight(.bold)
                 //       .padding(.leading, 60)
                //        .padding(.bottom, 10)
                //    Spacer()
               // }
            }
            .padding(.leading, 40)
        }
    }
}

struct SettingsCellView: View {
    var text: String
    @State private var isDarkMode = true
    
    var body: some View {
        HStack {
            ZStack {
                SettingsRedRectangle()
                    .padding(.leading, 290)


                SettingsBorderRectangle()
                    .padding(.leading, 285)
            }
        }
        .padding(.bottom, 10)
    }
}

struct LocItemCellView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SignUpRequestCellView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack {
                SelLocCellView(city: "Chicago", address1: "6251 15th Street", address2: "", state: "IL", zipCode: "24214")
                SettingsCellView(text: "Dark Mode")
            }
            VStack {
                SelLocCellView(city: "Chicago", address1: "6251 15th Street", address2: "", state: "IL", zipCode: "24214")
                SettingsCellView(text: "Dark Mode")
            }.preferredColorScheme(.dark)
                
        }
    }
}
