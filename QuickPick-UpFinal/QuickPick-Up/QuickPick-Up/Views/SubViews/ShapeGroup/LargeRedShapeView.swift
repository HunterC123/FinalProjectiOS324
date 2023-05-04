/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import SwiftUI

//Parcial views for future use
struct AddUserRedShapeView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .stroke(Color("BorderColor"), lineWidth: 3)
            .background(RoundedRectangle(cornerRadius: 12)
                .fill(Color("AccentRed")))
            .frame(width: 280, height: 620)
    }
}

struct SignUpRedShapeView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .stroke(Color("BorderColor"), lineWidth: 3)
            .background(RoundedRectangle(cornerRadius: 12)
                .fill(Color("AccentRed")))
            .frame(width: 240, height: 600)
    }
}

struct LargeRedShapeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack {
                ScrollView() {
                    AddUserRedShapeView()
                        .padding()
                    SignUpRedShapeView()
                }
            }
            VStack {
                ScrollView() {
                    AddUserRedShapeView()
                        .padding()
                    SignUpRedShapeView()
                }
            }
            .preferredColorScheme(.dark)
        }
    }
}
