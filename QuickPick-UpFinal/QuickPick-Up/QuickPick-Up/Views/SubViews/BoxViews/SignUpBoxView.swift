/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import SwiftUI

//Parcial view for future use
struct SignUpBoxView: View {
    var body: some View {
        ZStack {
            SignUpRedShapeView()
            VStack {
                SmallFieldTextView(text: "First Name")
                    .padding(.trailing, 100)
                SmallTextFieldView()
                SmallFieldTextView(text: "Last Name")
                    .padding(.trailing, 100)
                SmallTextFieldView()
                SmallFieldTextView(text: "Username")
                    .padding(.trailing, 100)
                SmallTextFieldView()
                SmallFieldTextView(text: "E-mail")
                    .padding(.trailing, 130)
                SmallTextFieldView()
                VStack {
                    SmallFieldTextView(text: "Phone Number")
                        .padding(.trailing, 64)
                    SmallTextFieldView()
                    SmallFieldTextView(text: "Password")
                        .padding(.trailing, 100)
                    SmallTextFieldView()
                    SmallFieldTextView(text: "Confirm Password")
                        .padding(.trailing, 30)
                    SmallTextFieldView()
                }
            }
            .padding(.bottom, 20)
        }
    }
}

struct SignUpBoxView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpBoxView()
    }
}
