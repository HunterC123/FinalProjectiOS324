/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import SwiftUI

//Parcial view for future use
struct ExitScreenButtonView: View {
    var body: some View {
        ZStack {
            ExitCircleView()
            Image(systemName: "xmark")
                .font(.system(size: 35))
        }
    }
}

struct SettingsButtonView: View {
    var body: some View {
        ZStack {
            ExitCircleView()
            Image(systemName: "gearshape")
                .font(.system(size: 35))
        }
    }
}

struct whiteRectangleDivider: View {
    var body: some View {
            RoundedRectangle(cornerRadius: 50)
            .stroke(Color("BorderColor"), lineWidth: 3)
                    .background(RoundedRectangle(cornerRadius: 50)
                        .fill(Color("BorderColor")))
                    .frame(width: 330, height: 6)

    }
}

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack {
                ExitScreenButtonView()
                    .padding()
                SettingsButtonView()
                    .padding()
                whiteRectangleDivider()
            }
            VStack {
                ExitScreenButtonView()
                    .padding()
                SettingsButtonView()
                    .padding()
                whiteRectangleDivider()
            }
            .preferredColorScheme(.dark)
        }
    }
}
