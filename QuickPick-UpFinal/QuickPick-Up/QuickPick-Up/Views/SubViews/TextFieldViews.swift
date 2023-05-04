/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import SwiftUI

//All textfields
struct LargeTextFieldView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .stroke(Color(.black), lineWidth: 2)
            .background(RoundedRectangle(cornerRadius: 12)
                .fill(Color("TextFieldColor")))
            .frame(width: 275, height: 50)
    }
}

struct MediumTextFieldView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .stroke(Color(.black), lineWidth: 2)
            .background(RoundedRectangle(cornerRadius: 12)
                .fill(Color("TextFieldColor")))
            .frame(width: 240, height: 35)
    }
}

struct SmallTextFieldView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .stroke(Color(.black), lineWidth: 2)
            .background(RoundedRectangle(cornerRadius: 12)
                .fill(Color("TextFieldColor")))
            .frame(width: 200, height: 35)
    }
}


struct TextFieldViews_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack {
                LargeTextFieldView()
                MediumTextFieldView()
                SmallTextFieldView()
            }
            VStack {
                LargeTextFieldView()
                MediumTextFieldView()
                SmallTextFieldView()
                    .preferredColorScheme(.dark)
            }
        }
    }
}
