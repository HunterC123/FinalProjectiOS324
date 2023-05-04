/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import SwiftUI

//Parcial view for future use
struct SelectLocBoxView: View {
    var body: some View {
        ZStack {
            SelectLocRedShapeView()
            VStack {
                LargeFieldTextView(text: "Select ZipCode")
                    .padding(.bottom, 1)
                ZStack {
                    SmallTextFieldView()
                }
            }
        }
    }
}

struct SelectLocBoxView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SelectLocBoxView()
            SelectLocBoxView()
                .preferredColorScheme(.dark)
        }
    }
}
