/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import SwiftUI

//Parcial views for future use
struct SelectLocRedShapeView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .stroke(Color("BorderColor"), lineWidth: 3)
            .background(RoundedRectangle(cornerRadius: 12)
                .fill(Color("AccentRed")))
            .frame(width: 280, height: 150)
    }
}

struct LoginRedShapeView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .stroke(Color("BorderColor"), lineWidth: 3)
            .background(RoundedRectangle(cornerRadius: 12)
                .fill(Color("AccentRed")))
            .frame(width: 320, height: 370)
    }
}

struct PickUpRedShapeView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: Constants.Views.roundedRectCornerRadius)
            .stroke(Color("BorderColor"), lineWidth: 3)
            .background(RoundedRectangle(cornerRadius: 12)
                .fill(Color("AccentRed")))
            .frame(width: 300, height: 300)
    }
}

struct MediumRedShapeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack {
                ScrollView() {
                    SelectLocRedShapeView()
                        .padding()
                    LoginRedShapeView()
                        .padding()
                    PickUpRedShapeView()
                }
            }
            VStack {
                ScrollView() {
                    SelectLocRedShapeView()
                        .padding()
                    LoginRedShapeView()
                        .padding()
                    PickUpRedShapeView()
                }
            }
            .preferredColorScheme(.dark)
        }
    }
}
