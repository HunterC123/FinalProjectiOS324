/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import SwiftUI

//Parcial view for future use
struct ExitBackGroundView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                ExitScreenButtonView()
                    .padding(.top, 45)
                    .padding(.trailing, 32)
            }
            Spacer()
        }
    }
}

struct ExitBackGroundView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExitBackGroundView()
            ExitBackGroundView()
                .preferredColorScheme(.dark)
        }
    }
}
