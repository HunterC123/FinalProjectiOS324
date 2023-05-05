/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import SwiftUI

struct LoginBoxView: View {
    

    //Parcial view for future use
    var body: some View {
        ZStack {
            //Main Rectangle
            LoginRedShapeView()
            
            //Decorative Circle
            ZStack {
                LargerCircleOverlay()
                Image(systemName: "arrow.up") //Maybe Shippingbox
                    .font(.system(size: 60))
                    .foregroundColor(.black)
            }.padding(.bottom, 370)
            
            VStack {
                //Username
                LargeFieldTextView(text: "Username")
                    .padding(.trailing, 170)
                    .padding(.bottom, 1)
                    .padding(.top, 40)
                ZStack {
                    LargeTextFieldView()

                }
                .padding(.bottom, 11)
                
                LargeFieldTextView(text: "Password")
                    .padding(.trailing, 170)
                    .padding(.bottom, 1)
                //Password
                ZStack {
                    LargeTextFieldView()
                }
                AdditionalTextView(text: "Forgot Password?")
                    .padding(.top, 55)
            }
        }

    }
}

struct LoginBoxView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ZStack {
                Rectangle()
                    .frame(width: 400, height: 1000)
                    .foregroundColor(Color("BackgroundColor"))
                LoginBoxView()
            }
            ZStack {
                Rectangle()
                    .frame(width: 400, height: 1000)
                    .foregroundColor(Color("BackgroundColor"))
                LoginBoxView()
            }
            .preferredColorScheme(.dark)
        }
    }
}
