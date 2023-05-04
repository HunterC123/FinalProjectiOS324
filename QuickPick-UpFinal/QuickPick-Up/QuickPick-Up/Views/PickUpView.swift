/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import SwiftUI

struct PickUpView: View {
    @State var dataBase = NoSQLDB()
    
    let address: String
    let name: String
    let date: String
    @State var amount = ""
    
    //Main View
    var body: some View {

        ZStack {
            VStack {
                PickUpBox(address: address, name: name, date: date)
            }
            
            Button( action: {
                dataBase.addPickUp(address: address, name: name, amount: amount, date: date)
                navigateToSelectLocView()
            }) {
                ZStack {
                    MediumBlueRectangle()
                    SmallButtonTextView(text: "Confirm\nPick-Up")
                        .bold()
                }
            }

            .padding(.top, 450)
            TextField("Amount", text: $amount)
                .padding(.leading, 90)
                .padding(.top, 138)
        }
        .background(Color("BackgroundColor"))
    }
    
    //Send to Select Location Screen
    func navigateToSelectLocView() {
        let curLoc = SelectLocationView()
        let navigationController = UINavigationController(rootViewController: UIHostingController(rootView: SelectLocationView()))
        UIApplication.shared.windows.first?.rootViewController = navigationController
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
    
}

struct PickUpView_Previews: PreviewProvider {
    static var previews: some View {
        PickUpView(address: "2421", name: "Soap", date: "2/21/2023")
    }
}
