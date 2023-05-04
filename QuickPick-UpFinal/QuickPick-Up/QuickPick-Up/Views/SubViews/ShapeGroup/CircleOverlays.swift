/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/
import SwiftUI

//Parcial views for future use
struct SmallCircleOverlay: View {
    var body: some View {
        ZStack {
            RedForegroundCircleView()
            RedBackGroundCircleView()
        }
    }
}
struct LargerCircleOverlay: View {
    var body: some View {
        ZStack {
            OrangeForegroundCircleView()
            OrangeBackGroundCircleView()
        }
    }
}

struct CircleOverlays_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ZStack {
                Group {
                    Rectangle()
                        .frame(width: 400, height: 1000)
                        .foregroundColor(Color("BackgroundColor"))
                    VStack {
                        ZStack {
                            LargerCircleOverlay()
                        }
                        ZStack {
                            SmallCircleOverlay()
                        }
                    }
                }
            }
            ZStack {
                Group {
                    Rectangle()
                        .frame(width: 400, height: 1000)
                        .foregroundColor(Color("BackgroundColor"))
                    VStack {
                        ZStack {
                            LargerCircleOverlay()
                        }
                        ZStack {
                            SmallCircleOverlay()
                        }
                    }
                }
            }
            .preferredColorScheme(.dark)
        }
    }
}
