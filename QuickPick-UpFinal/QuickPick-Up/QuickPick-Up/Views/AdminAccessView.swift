//
//  AdminAccessView.swift
//  QuickPick-Up
//
//  Created by Celeste, Hunter T (celes002) on 3/28/23.
//

import SwiftUI

struct AdminAccessView: View {
    var body: some View {
        ZStack {
            ExitBackGroundView()
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }
        .background(Color("BackgroundColor"))
    }
}

struct AdminAccessView_Previews: PreviewProvider {
    static var previews: some View {
        AdminAccessView()
    }
}
