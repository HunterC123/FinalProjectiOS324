/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import SwiftUI

//Parcial view for future use
struct PickUpBox: View {
    var address: String
    var name: String
    var date: String
    
    var body: some View {
       
        ZStack {
            ExitBackGroundView()
                .hidden()
                .background(Color("BackgroundColor"))
            PickUpRedShapeView()
            LargerCircleOverlay()
                .padding(.bottom, 300)
            Image(systemName: "arrow.up") //Maybe Shippingbox
                .font(.system(size: 60))
                .foregroundColor(.black)
                .padding(.bottom, 300)
            VStack {
                
                
                VStack {
                    PickUpDescTextView(text: address)
                    PickUpDescTextView(text: name)
                    PickUpDescTextView(text: date)
                        .padding(.bottom, 10)
                    SettingsTextView(text: "Amount:")
                        .padding(.trailing, 150)
                    MediumTextFieldView()
                }
            }
        }
    }
}

struct PickUpBox_Previews: PreviewProvider {
    static var previews: some View {
        PickUpBox(address: "2151 80th Street", name: "Soap", date: "5/13/2022")
    }
}
