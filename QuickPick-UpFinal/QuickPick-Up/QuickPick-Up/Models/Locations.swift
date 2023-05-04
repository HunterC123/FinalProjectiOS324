/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import Foundation
import CoreLocation
import MapKit

//Struct for all locations
struct Location {
    var id: String
    var address1: String
    var address2: String
    var state: String
    var city: String
    var zipCode: String
    var phoneNumber: String
}

//Class for finding location and making a list of locations
struct LocationFinder {
    var currentZipCode : String = ""
    var LocationList: [Location] = []
    let locationManager = CLLocationManager()
        
    //Returns string of the current zipCode
     func getCurrentLocation() -> String{
       // print("Starting CurLoc")
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        
        
        var zipCodeReturn : String = ""
        guard let location = locationManager.location else { return ""}
        let geocoder = CLGeocoder()
        geocoder.reverseGeocodeLocation(location) { (placemarks, error) in
            guard let placemark = placemarks?.first else {return}
            guard let zipCode = placemark.postalCode else {return}
            

            zipCodeReturn = zipCode
            print(zipCodeReturn)
            print(zipCode)
            return
        }
        return zipCodeReturn
    }
    
    //Sets ZipCode
    mutating func setCurrentZipCode(words: String) {
        currentZipCode = words
    }
    
    //Adds location
     mutating func locationAdd(location: Location) {
        LocationList.append(location)
    }
    
    //Clears all locations from list
    mutating func locationClear() {
        LocationList.removeAll()
    }
    
    //prints all locations
    func printLoc(location: Location) {
        //print("\(location.address1) " + "\(location.zipCode)" + "\(location.city)")
    }
}
