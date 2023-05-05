/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import SwiftUI

//Parcial views for future use
struct AdminRedRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .stroke(Color("BorderColor"), lineWidth: 3)
            .background(RoundedRectangle(cornerRadius: 12)
                .fill(Color("AccentRed")))
            .frame(width: 225, height: 100)
           
    }
}

struct MediumRedRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .stroke(Color("BorderColor"), lineWidth: 3)
            .background(RoundedRectangle(cornerRadius: 12)
                .fill(Color("AccentRed")))
            .frame(width: 150, height: 75)
           
    }
}

struct SmallRedRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .stroke(Color("BorderColor"), lineWidth: 3)
            .background(RoundedRectangle(cornerRadius: 12)
                .fill(Color("AccentRed")))
            .frame(width: 100, height: 40)
           
    }
}

struct SettingsRedRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .stroke(Color("BorderColor"), lineWidth: 3)
            .background(RoundedRectangle(cornerRadius: 12)
                .fill(Color("AccentRed")))
            .frame(width: 75, height: 50)
           
    }
}

struct SettingsBorderRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 100)
            .stroke(Color(.black), lineWidth: 3)
            .frame(width: 50, height: 30)
           
    }
}

struct RedShapeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack {
                AdminRedRectangle()
                MediumRedRectangle()
                SmallRedRectangle()
                ZStack {
                    SettingsRedRectangle()
                    SettingsBorderRectangle()
                }
            }
            VStack {
                AdminRedRectangle()
                MediumRedRectangle()
                SmallRedRectangle()
                SettingsRedRectangle()
            }
            .preferredColorScheme(.dark)
        }
    }
}
