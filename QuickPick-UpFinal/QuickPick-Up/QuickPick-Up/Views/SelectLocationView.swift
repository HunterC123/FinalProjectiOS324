/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import SwiftUI
import CoreLocation

struct SelectLocationView: View {
    //Field used for testing
    @State var currentZipCode = "53404"
    @State var systemSettings = Settings()
    
    @State var zipCodeField = "53404"
    @State var locationFinder = LocationFinder()
    //@State var grabZipCode = currentLocationGrabber()
    
    @ObservedObject var dataBase = NoSQLDB()
    
    //@Binding var darkModeModule: Bool

    
    //Constructor
    init() {
        dataBase.getLocations()
    }
    
    //Main View
    var body: some View {
        NavigationView() {
            ZStack {
                NavigationLink(destination: SettingsView(darkModeModule: .constant(true))) {
                    VStack {
                        SettingsButtonView()
                            .padding(.top, 45)
                            .padding(.leading, 32)
                        Spacer()
                    }
                    Spacer()
                }.buttonStyle(PlainButtonStyle())
                VStack {
                    TitleTextView(text: "Select\nLocation")
                        .multilineTextAlignment(.center)
                    ZStack {
                        SelectLocBoxView()
                        TextField("Zip Code", text: $zipCodeField)
                            .padding(.leading, 110)
                            .padding(.top, 30)
                    }
                    
                    //Gets Current Location
                    Button(action:  {
                        var temp = locationFinder.getCurrentLocation()
                        zipCodeField = temp
                    }) {
                        ZStack {
                            MediumRedRectangle()
                            SmallButtonTextView(text: "Use Current \nLocation")
                                .multilineTextAlignment(.center)
                        }
                    }
                    
                    //Searches based off zipcode field
                    Button(action: {
                        //Gets fresh list from database
                        //Clears list
                        locationFinder.locationClear()
                        for i in dataBase.allLocations {
                            if (i.zipCode == zipCodeField) {
                                locationFinder.locationAdd(location: Location(id: i.id, address1: i.address1, address2: i.address2, state: i.state, city: i.city, zipCode: i.zipCode, phoneNumber: i.phoneNumber))
                                print("\(i.address1)")
                            } else {
                                
                            }
                            
                            //Testing print loop
                            for i in locationFinder.LocationList {
                                locationFinder.printLoc(location: i)
                            }
                        }
                    }) {
                        ZStack {
                            SmallRedRectangle()
                            SmallButtonTextView(text: "Search!")
                        }
                    }
                    ScrollView() {
                        ForEach(locationFinder.LocationList, id:\.id) { i in
                            VStack {
                                    SelLocCellView(city: i.city, address1: i.address1, address2: i.address2, state: i.state, zipCode: i.zipCode)
                                NavigationLink(destination: LocationInfoView(zipCode: i.zipCode, address1: i.address1)) {
                                    AddressTextView(text: "See More")
                                           .fontWeight(.bold)
                                           .padding(.trailing, 100)
                                }.buttonStyle(PlainButtonStyle())
                            }
                        }
                    }
                }
                .padding(.top, 60)
            }
            .background(Color("BackgroundColor"))
        }
      //  .environment(\.colorScheme, darkMode.darkModeModule ? .dark : .light)
    }
}

//Previews
struct SelectLocationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SelectLocationView()
            SelectLocationView()
                .preferredColorScheme(.dark)
        }
    }
}
