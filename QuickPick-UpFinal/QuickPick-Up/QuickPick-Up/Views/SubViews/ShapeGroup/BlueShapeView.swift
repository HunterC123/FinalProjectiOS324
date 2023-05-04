/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import SwiftUI

//Parcial views for future use
struct MediumBlueRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .stroke(Color("BorderColor"), lineWidth: 3)
            .background(RoundedRectangle(cornerRadius: 12)
                .fill(Color("AccentBlue")))
            .frame(width: 150, height: 75)
           
    }
}

struct ContactSmallBlueRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .stroke(Color("BorderColor"), lineWidth: 3)
            .background(RoundedRectangle(cornerRadius: 12)
                .fill(Color("AccentBlue")))
            .frame(width: 120, height: 60)
           
    }
}

struct SmallBlueRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .stroke(Color("BorderColor"), lineWidth: 3)
            .background(RoundedRectangle(cornerRadius: 12)
                .fill(Color("AccentBlue")))
            .frame(width: 100, height: 50)
           
    }
}

struct BlueShapeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack {
                MediumBlueRectangle()
                ContactSmallBlueRectangle()
                SmallBlueRectangle()
            }
            VStack {
                MediumBlueRectangle()
                ContactSmallBlueRectangle()
                SmallBlueRectangle()
            }
            .preferredColorScheme(.dark)
        }
    }
    
}
