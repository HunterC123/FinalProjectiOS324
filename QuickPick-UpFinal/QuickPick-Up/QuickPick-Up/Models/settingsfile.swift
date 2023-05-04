/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/

import Foundation

//Settings file for enabling darkmode
class Settings {
    var darkMode: Bool = false
    
    public func changeMode(mode: Bool) {
        darkMode = mode
    }
    
    public func getMode() -> Bool {
        return darkMode
    }
}
