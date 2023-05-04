/*
* Author: Hunter Celeste
* Class: iOS Development 324
* Final Project: Quick-Pick-UP
* Final Date: May 4th 2023
*/
import SwiftUI

//Generic Text Views for whole app
struct TitleTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(Color("OnBackGroundTextColor"))
    }
}

struct LargeFieldTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(Color("InBoxTextColor"))
    }
}

struct SmallFieldTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.body)
            .fontWeight(.semibold)
            .foregroundColor(Color("InBoxTextColor"))
    }
}

struct LargeButtonTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color("InBoxTextColor"))
    }
}

struct SmallButtonTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.body)
            .fontWeight(.semibold)
            .foregroundColor(Color("InBoxTextColor"))
    }
}

//Used for Forgot password and error message
struct AdditionalTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title3)
            .foregroundColor(Color("InBoxTextColor"))
    }
}

struct ErrorTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(Color("InBoxTextColor"))
    }
}

//This one is for the SETTINGS VIEW
struct SettingsTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(Color("OnBackGroundTextColor"))
    }
}

//This one is for the SIGN-UP REQUEST VIEW
struct SignUpRequestTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.body)
            .fontWeight(.semibold)
            .foregroundColor(Color("OnBackGroundTextColor"))
    }
}

//This one is for the ADD LOCATION VIEW
struct CurrentDateTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(Color("InBoxTextColor"))
            .italic()
    }
}

//These four are for the SELECT LOCATION VIEW
struct LocationNameTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(Color("OnBackGroundTextColor"))
    }
}


struct ItemNameTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title3)
            .fontWeight(.regular)
            .foregroundColor(Color("OnBackGroundTextColor"))
    }
}

struct AddressTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.regular)
            .foregroundColor(Color("OnBackGroundTextColor"))
            .italic()
    }
}

struct SeeMoreTextView: View {
    
    var body: some View {
        Text("see more")
            .font(.footnote)
            .foregroundColor(Color("OnBackGroundTextColor"))
      .italic()
    }
}

//These two are for the LOCATION NAME VIEW
struct ItemTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(Color("OnBackGroundTextColor"))
    }
}

struct ItemDescTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title)
            .foregroundColor(Color("OnBackGroundTextColor"))
    }
}

//This one is for the PICK-UP VIEW
struct PickUpDescTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title2)
            .foregroundColor(Color("InBoxTextColor"))
    }
}


struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HStack {
                VStack {
                    TitleTextView(text: "Sign-Up")
                    LargeFieldTextView(text: "Username")
                    SmallFieldTextView(text: "Username")
                    LargeButtonTextView(text: "Sign-Up")
                    SmallButtonTextView(text: "Pick-Up")
                    AdditionalTextView(text: "Forgot Password?")
                    SettingsTextView(text: "Dark Mode")
                    SignUpRequestTextView(text: "lane, larry")
                    CurrentDateTextView(text: "3/28/23")
                    LocationNameTextView(text: "Racine")
                }.padding(.trailing, 20)
                
                VStack {
                    ItemNameTextView(text: "Soap")
                    AddressTextView(text: "6251 15th St")
                    SeeMoreTextView()
                    ItemTextView(text: "Soap")
                    ItemDescTextView(text: "Info")
                    PickUpDescTextView(text: "Pick-Up")
                }
            }
            HStack {
                VStack {
                    TitleTextView(text: "Sign-Up")
                    LargeFieldTextView(text: "Username")
                    SmallFieldTextView(text: "Username")
                    LargeButtonTextView(text: "Sign-Up")
                    SmallButtonTextView(text: "Pick-Up")
                    AdditionalTextView(text: "Forgot Password?")
                    SettingsTextView(text: "Dark Mode")
                    SignUpRequestTextView(text: "lane, larry")
                    CurrentDateTextView(text: "3/28/23")
                    LocationNameTextView(text: "Racine")
                }.padding(.trailing, 20)
                
                VStack {
                    ItemNameTextView(text: "Soap")
                    AddressTextView(text: "6251 15th St")
                    SeeMoreTextView()
                    ItemTextView(text: "Soap")
                    ItemDescTextView(text: "Info")
                    PickUpDescTextView(text: "Pick-Up")
                }
            }
            .preferredColorScheme(.dark)
        }
    }
}
