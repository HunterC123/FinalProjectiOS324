/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import SwiftUI


struct LocationInfoView: View {
    let zipCode: String
    let address1: String
    
    var itemCompare = ItemCompare()
    @ObservedObject var dataBase = NoSQLDB()
    
    
    //Main View
   var body: some View {
        ZStack {
            ExitBackGroundView()
                .hidden()
            VStack {
                TitleTextView(text: address1)
                    .padding(.top, 70)
               
                //Refresh Button
                Button(action:  {
                    dataBase.getItems()
                } ) {
                    ZStack {
                        SmallBlueRectangle()
                        SmallButtonTextView(text: "Refresh")
                    }
                }
                
                //List of all items in a scrollView
                ScrollView() {
                    ForEach(dataBase.allItems, id:\.id) { i in
                        VStack {
                            if (itemCompare.compareItem(address: address1, item: i)) {
                                ZStack() {
                                    whiteRectangleDivider()
                                    SmallCircleOverlay()
                                }
                                ItemTextView(text: i.name)
                                ItemDescTextView(text: i.amount + " pallets")
                                ItemDescTextView(text: i.date)
                                ZStack {
                                    NavigationLink(destination: PickUpView(address: address1, name: i.name, date: i.date)) {
                                        ZStack {
                                            SmallBlueRectangle()
                                            SmallButtonTextView(text: "Pick-Up")
                                        }
                                    }
                                }
                                
                            }
                        }
                    }

                }
            }
        }
        .background(Color("BackgroundColor"))
    }
}

//Preview
struct LocationInfoView_Previews: PreviewProvider {
    static var previews: some View {
        LocationInfoView(zipCode: "52151", address1: "95th Street")
    }
}
