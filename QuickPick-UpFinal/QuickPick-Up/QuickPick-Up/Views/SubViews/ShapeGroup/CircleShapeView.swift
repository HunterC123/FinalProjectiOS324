/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import SwiftUI

//Parcial views for future use
struct ApproveCircleView: View {
    var body: some View {
        Circle()
            .stroke(Color("BorderColor"), lineWidth: 2)
            .background(Circle()
                .fill(Color("AccentGreen")))
            .frame(width: 40, height: 40)
    }
}

struct DenyCircleView: View {
    var body: some View {
        Circle()
            .stroke(Color("BorderColor"), lineWidth: 2)
            .background(Circle()
                .fill(Color("AccentRed")))
            .frame(width: 40, height: 40)
    }
}

struct RedForegroundCircleView: View {
    var body: some View {
        Circle()
            .stroke(Color("BackgroundColor"), lineWidth: 5)
            .background(Circle()
                .fill(Color("AccentRed")))
            .frame(width: 40, height: 40)
    }
}

struct RedBackGroundCircleView: View {
    var body: some View {
        Circle()
            .stroke(Color("BorderColor"), lineWidth: 2)
            .background(Circle()
                .fill(Color("AccentRed")))
            .frame(width: 40, height: 40)
    }
}

struct OrangeForegroundCircleView: View {
    var body: some View {
        Circle()
            .stroke(Color("BackgroundColor"), lineWidth: 15)
            .background(Circle()
                .fill(Color("AccentOrange")))
            .frame(width: 100, height: 100)
    }
}

struct OrangeBackGroundCircleView: View {
    var body: some View {
        Circle()
            .stroke(Color("CircleOverlayLarge"), lineWidth: 5)
            .background(Circle()
                .fill(Color("AccentOrange")))
            .frame(width: 100, height: 100)
    }
}

struct ExitCircleView: View {
    var body: some View {
        Circle()
            .stroke(Color("BorderColor"), lineWidth: 3)
            .frame(width: 65, height: 65)
    }
}

struct CircleShapeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack {
                ApproveCircleView()
                DenyCircleView()
                RedBackGroundCircleView()
                ZStack {
                    Rectangle()
                        .frame(width: 75, height: 75)
                        .foregroundColor(Color("BackgroundColor"))
                    RedForegroundCircleView()
                    RedBackGroundCircleView()
                }
                ZStack {
                    Rectangle()
                        .frame(width: 125, height: 125)
                        .foregroundColor(Color(.black))
                    OrangeForegroundCircleView()
                    OrangeBackGroundCircleView()
                }
                ExitCircleView()
            }
            
            VStack {
                ApproveCircleView()
                DenyCircleView()
                RedBackGroundCircleView()
                ZStack {
                    Rectangle()
                        .frame(width: 75, height: 75)
                        .foregroundColor(Color("BackgroundColor"))
                        RedForegroundCircleView()
                        RedBackGroundCircleView()
                }
                ZStack {
                    Rectangle()
                        .frame(width: 125, height: 125)
                        .foregroundColor(Color("BackgroundColor"))
                    OrangeForegroundCircleView()
                    OrangeBackGroundCircleView()
                }
                ExitCircleView()
            }
            .preferredColorScheme(.dark)
        }
    }
}
